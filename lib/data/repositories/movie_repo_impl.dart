import 'package:binge_box/data/dto/get_list/get_movie_list_dto.dart';
import 'package:binge_box/domain/data_source/retrofit_api_data_source.dart';
import 'package:binge_box/domain/entities/get_list/get_movie_list.dart';
import 'package:binge_box/domain/repositories/movie_repo.dart';
import 'package:binge_box/utils/app_error.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:binge_box/data/local/drift_database.dart';
import 'package:binge_box/data/dto/movie/movie_dto.dart';
import 'package:binge_box/domain/entities/movie/movie.dart';
import 'package:drift/drift.dart';

@Singleton(as: MovieRepo)
class MovieRepoImpl implements MovieRepo {
  final RetrofitApiDataSource retrofitApiDataSource;

  final AppDatabase db;

  MovieRepoImpl({required this.retrofitApiDataSource, required this.db});

  @override
  Future<Either<AppError, GetMovieList>> getTrendingMovies(int page) async {
    try {
      final dto = await retrofitApiDataSource.getTrendingMovies(page);
      final entity = dto.toEntity();

      // Cache the movies into local DB (best-effort)
      try {
        final companions = dto.results
            .map((mDto) => mDto.toCompanion(source: 'trending'))
            .toList();
        await db.upsertMovies(companions);
      } catch (_) {
        // ignore caching errors
      }

      return Right(entity);
    } catch (e) {
      // On network failure, try to return cached movies
      try {
        final cached = await db.getMoviesBySource('trending');
        if (cached.isNotEmpty) {
          final results = cached.map((m) => m.toEntity()).toList();

          final fallback = GetMovieList(
            page: page,
            totalPages: 1,
            totalResults: results.length,
            results: results,
          );
          return Right(fallback);
        }
      } catch (_) {
        // ignore DB read errors
      }

      return Left(
        AppError(
          title: 'Get Trending Movies Failed',
          description: e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<AppError, GetMovieList>> getNowPlayingMovies(int page) async {
    try {
      final dto = await retrofitApiDataSource.getNowPlayingMovies(page);
      final entity = dto.toEntity();

      // Cache the movies into local DB (best-effort)
      try {
        final companions = dto.results
            .map((mDto) => mDto.toCompanion(source: 'now_playing'))
            .toList();
        await db.upsertMovies(companions);
      } catch (_) {
        // ignore caching errors
      }

      return Right(entity);
    } catch (e) {
      // On network failure, try to return cached movies
      try {
        final cached = await db.getMoviesBySource('now_playing');
        if (cached.isNotEmpty) {
          final results = cached.map((m) => m.toEntity()).toList();

          final fallback = GetMovieList(
            page: page,
            totalPages: 1,
            totalResults: results.length,
            results: results,
          );
          return Right(fallback);
        }
      } catch (_) {
        // ignore DB read errors
      }

      return Left(
        AppError(
          title: 'Get Now Playing Movies Failed',
          description: e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<AppError, GetMovieList>> searchMovies(
    int page,
    String query,
  ) async {
    try {
      final dto = await retrofitApiDataSource.searchMovies(page, query);
      return Right(dto.toEntity());
    } catch (e) {
      return Left(
        AppError(
          title: 'Search Movies Failed',
          description: e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<AppError, void>> upsertMovie(Movie movie) async {
    try {
      await db.upsertMovies([movie.toDto().toCompanion(source: 'cached')]);
      return Right(null);
    } catch (e) {
      return Left(
        AppError(
          title: 'Cache Movie Failed',
          description: e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<AppError, GetMovieList>> getBookmarkedMovies(int page) async {
    try {
      final bookmarkedIds = await db.getBookmarkedIds();
      if (bookmarkedIds.isEmpty) {
        return Right(GetMovieList(
          page: page,
          totalPages: 1,
          totalResults: 0,
          results: [],
        ));
      }

      final allMovies = await db.getAllMovies();
      // Filter to bookmarked IDs and deduplicate by movie id (multiple
      // cached rows may exist for different sources but represent the same
      // movie). Keep the first occurrence.
      final filtered = allMovies.where((m) => bookmarkedIds.contains(m.id));
      final Map<int, Movy> unique = {};
      for (final m in filtered) {
        unique.putIfAbsent(m.id, () => m);
      }
      final results = unique.values.map((m) => m.toEntity()).toList();

      final list = GetMovieList(
        page: page,
        totalPages: 1,
        totalResults: results.length,
        results: results,
      );
      return Right(list);
    } catch (e) {
      return Left(
        AppError(
          title: 'Get Bookmarked Movies Failed',
          description: e.toString(),
        ),
      );
    }
  }
}
