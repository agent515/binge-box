import 'package:binge_box/domain/entities/get_list/get_movie_list.dart';
import 'package:binge_box/domain/repositories/movie_repo.dart';
import 'package:binge_box/domain/utils/use_case.dart';
import 'package:binge_box/utils/app_error.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class SearchMoviesUseCase
    implements UseCase<GetMovieList, SearchMoviesUseCaseParams> {
  final MovieRepo movieRepo;

  SearchMoviesUseCase(this.movieRepo);

  @override
  Future<Either<AppError, GetMovieList>> call(
          SearchMoviesUseCaseParams param) =>
      movieRepo.searchMovies(param.page, param.query);
}

class SearchMoviesUseCaseParams {
  final int page;
  final String query;

  SearchMoviesUseCaseParams({
    required this.page,
    required this.query,
  });
}
