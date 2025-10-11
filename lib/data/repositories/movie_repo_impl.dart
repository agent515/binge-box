import 'package:binge_box/data/dto/get_list/get_movie_list_dto.dart';
import 'package:binge_box/domain/data_source/retrofit_api_data_source.dart';
import 'package:binge_box/domain/entities/get_list/get_movie_list.dart';
import 'package:binge_box/domain/repositories/movie_repo.dart';
import 'package:binge_box/utils/app_error.dart';
import 'package:dartz/dartz.dart';

class MovieRepoImpl implements MovieRepo {
  final RetrofitApiDataSource retrofitApiDataSource;

  MovieRepoImpl({required this.retrofitApiDataSource});

  @override
  Future<Either<AppError, GetMovieList>> getTrendingMovies(int page) async {
    try {
      final dto = await retrofitApiDataSource.getTrendingMovies(page);
      return Right(dto.toEntity());
    } catch (e) {
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
      return Right(dto.toEntity());
    } catch (e) {
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
}
