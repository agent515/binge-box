import 'package:binge_box/domain/entities/get_list/get_movie_list.dart';
import 'package:binge_box/domain/repositories/movie_repo.dart';
import 'package:binge_box/domain/utils/use_case.dart';
import 'package:binge_box/utils/app_error.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetBookmarkedMoviesUseCase implements UseCase<GetMovieList, int> {
  final MovieRepo movieRepo;

  GetBookmarkedMoviesUseCase(this.movieRepo);

  @override
  Future<Either<AppError, GetMovieList>> call(int param) =>
      movieRepo.getBookmarkedMovies(param);
}
