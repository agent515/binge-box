import 'package:binge_box/utils/app_error.dart';
import 'package:dartz/dartz.dart';

abstract class BookmarkRepo {
  Future<Either<AppError, void>> addBookmark(int movieId);
  Future<Either<AppError, void>> removeBookmark(int movieId);
  Future<Either<AppError, bool>> isBookmarked(int movieId);
  Future<Either<AppError, List<int>>> getBookmarkedIds();
}
