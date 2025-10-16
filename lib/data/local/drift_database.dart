import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'drift_database.g.dart';

class Movies extends Table {
  IntColumn get id => integer()();
  TextColumn get title => text()();
  TextColumn get source => text()();
  TextColumn get posterPath => text().nullable()();
  TextColumn get backdropPath => text().nullable()();
  TextColumn get originalTitle => text()();
  TextColumn get releaseDate => text().nullable()();
  RealColumn get voteAverage => real()();
  TextColumn get overview => text().nullable()();
  // Bookmark is handled separately in the `bookmarks` table so we don't
  // require modifying remote DTOs. The movies table remains a cache of API
  // response fields.
  @override
  Set<Column> get primaryKey => {id, source};
}

class SyncQueue extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get actionType => text()();
  TextColumn get payload => text()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  IntColumn get tries => integer().withDefault(Constant(0))();
}

class Bookmarks extends Table {
  IntColumn get movieId => integer()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column> get primaryKey => {movieId};
}

@DriftDatabase(tables: [Movies, SyncQueue, Bookmarks])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  // Movies DAO
  Future<void> upsertMovies(List<Insertable<Movy>> movies) async {
    await batch((batch) {
      batch.insertAllOnConflictUpdate(this.movies, movies);
    });
  }

  Future<List<Movy>> getAllMovies() => select(movies).get();

  Future<List<Movy>> getMoviesBySource(String source) =>
      (select(movies)..where((t) => t.source.equals(source))).get();

  // Bookmark helpers (local-only, no server sync)
  Future<void> addBookmark(int movieId) async {
    await into(bookmarks)
        .insert(BookmarksCompanion.insert(movieId: Value(movieId)));
  }

  Future<void> removeBookmark(int movieId) async {
    await (delete(bookmarks)..where((t) => t.movieId.equals(movieId))).go();
  }

  Future<bool> isBookmarked(int movieId) async {
    final item = await (select(bookmarks)
          ..where((t) => t.movieId.equals(movieId)))
        .getSingleOrNull();
    return item != null;
  }

  Future<List<int>> getBookmarkedIds() async {
    final rows = await select(bookmarks).get();
    return rows.map((r) => r.movieId).toList();
  }

  // Sync queue operations
  Future<int> addSyncAction(SyncQueueCompanion companion) async {
    return into(syncQueue).insert(companion);
  }

  Future<List<SyncQueueData>> getPendingSyncActions() =>
      select(syncQueue).get();
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'binge_box.sqlite'));
    return NativeDatabase(file);
  });
}
