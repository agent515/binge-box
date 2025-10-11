import 'package:binge_box/domain/entities/get_list/get_movie_list.dart';
import 'package:binge_box/domain/repositories/movie_repo.dart';
import 'package:binge_box/domain/utils/use_case.dart';
import 'package:binge_box/utils/app_error.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetNowPlayingMoviesUseCase implements UseCase<GetMovieList, int> {
  final MovieRepo movieRepo;

  GetNowPlayingMoviesUseCase(this.movieRepo);

  @override
  Future<Either<AppError, GetMovieList>> call(int param) =>
      movieRepo.getNowPlayingMovies(param);
}
