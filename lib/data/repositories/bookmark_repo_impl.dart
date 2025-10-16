import 'package:binge_box/utils/app_error.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:binge_box/domain/repositories/bookmark_repo.dart';
import 'package:binge_box/data/local/drift_database.dart';

@Singleton(as: BookmarkRepo)
class BookmarkRepoImpl implements BookmarkRepo {
  BookmarkRepoImpl({required this.db});

  final AppDatabase db;

  @override
  Future<Either<AppError, bool>> isBookmarked(int movieId) async {
    try {
      final result = await db.isBookmarked(movieId);
      return Right(result);
    } catch (e) {
      return Left(
        AppError(
          title: 'Database Error',
          description: 'Failed to check bookmark status',
        ),
      );
    }
  }

  @override
  Future<Either<AppError, List<int>>> getBookmarkedIds() async {
    try {
      final result = await db.getBookmarkedIds();
      return Right(result);
    } catch (e) {
      return Left(
        AppError(
          title: 'Database Error',
          description: 'Failed to fetch bookmarked IDs',
        ),
      );
    }
  }

  @override
  Future<Either<AppError, void>> addBookmark(int movieId) async {
    try {
      await db.addBookmark(movieId);
      return Right(null);
    } catch (e) {
      return Left(
        AppError(
          title: 'Database Error',
          description: 'Failed to add bookmark',
        ),
      );
    }
  }

  @override
  Future<Either<AppError, void>> removeBookmark(int movieId) async {
    try {
      await db.removeBookmark(movieId);
      return Right(null);
    } catch (e) {
      return Left(
        AppError(
          title: 'Database Error',
          description: 'Failed to remove bookmark',
        ),
      );
    }
  }
}
