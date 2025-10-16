import 'package:binge_box/domain/entities/movie/movie.dart';
import 'package:binge_box/domain/repositories/movie_repo.dart';
import 'package:binge_box/domain/utils/use_case.dart';
import 'package:binge_box/utils/app_error.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class CacheMovieUseCase implements UseCase<void, Movie> {
  CacheMovieUseCase(this._repo);

  final MovieRepo _repo;

  @override
  Future<Either<AppError, void>> call(Movie movie) async {
    return _repo.upsertMovie(movie);
  }
}
