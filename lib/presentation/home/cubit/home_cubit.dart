import 'dart:async';

import 'package:binge_box/domain/entities/movie/movie.dart';
import 'package:binge_box/domain/use_cases/get_now_playing_movies_use_case.dart';
import 'package:binge_box/domain/use_cases/get_trending_movies_use_case.dart';
import 'package:binge_box/domain/use_cases/search_movies_use_case.dart';
import 'package:binge_box/presentation/home/cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  HomeCubit(
    this.getTrendingMoviesUseCase,
    this.getNowPlayingMoviesUseCase,
    this.searchMoviesUseCase,
  ) : super(HomeState.ready());

  final GetTrendingMoviesUseCase getTrendingMoviesUseCase;
  final GetNowPlayingMoviesUseCase getNowPlayingMoviesUseCase;
  final SearchMoviesUseCase searchMoviesUseCase;

  Future<List<Movie>> fetchTrendingMoviesPage(int pageKey) async {
    final result = await getNowPlayingMoviesUseCase(pageKey);
    return result.fold(
      (error) {
        return [];
      },
      (movieList) => movieList.results,
    );
  }

  Future<List<Movie>> fetchNowPlayingMoviesPage(int pageKey) async {
    final result = await getTrendingMoviesUseCase(pageKey);
    return result.fold(
      (error) {
        return [];
      },
      (movieList) => movieList.results,
    );
  }

  Future<List<Movie>> searchMovies(int pageKey, String query) async {
    final result = await searchMoviesUseCase(
      SearchMoviesUseCaseParams(
        page: pageKey,
        query: query,
      ),
    );
    return result.fold(
      (error) {
        return [];
      },
      (movieList) => movieList.results,
    );
  }

  void goToDetailsPage(Movie movie) {
    emit(HomeState.goToDetailsPage(movie));
  }

  void emitReady() {
    emit(
      HomeState.ready(),
    );
  }
}
