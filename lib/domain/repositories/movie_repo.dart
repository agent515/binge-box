import 'package:binge_box/domain/entities/get_list/get_movie_list.dart';
import 'package:binge_box/utils/app_error.dart';
import 'package:dartz/dartz.dart';

abstract class MovieRepo {
  Future<Either<AppError, GetMovieList>> getTrendingMovies(int page);
  Future<Either<AppError, GetMovieList>> getBookmarkedMovies(int page);
  Future<Either<AppError, GetMovieList>> getNowPlayingMovies(int page);
  Future<Either<AppError, GetMovieList>> searchMovies(int page, String query);
}
