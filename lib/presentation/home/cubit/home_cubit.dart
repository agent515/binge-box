import 'dart:async';

import 'package:binge_box/domain/entities/movie/movie.dart';
import 'package:binge_box/domain/use_cases/get_now_playing_movies_use_case.dart';
import 'package:binge_box/domain/use_cases/get_trending_movies_use_case.dart';
import 'package:binge_box/presentation/home/cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  HomeCubit(
    this.getTrendingMoviesUseCase,
    this.getNowPlayingMoviesUseCase,
  ) : super(HomeState.ready());

  final GetTrendingMoviesUseCase getTrendingMoviesUseCase;
  final GetNowPlayingMoviesUseCase getNowPlayingMoviesUseCase;

  Future<List<Movie>> fetchTrendingMoviesPage(int pageKey) async {
    final result = await getNowPlayingMoviesUseCase(pageKey);
    return result.fold(
      (error) {
        emit(HomeState.error(error));
        return [];
      },
      (movieList) => movieList.results,
    );
  }

  Future<List<Movie>> fetchNowPlayingMoviesPage(int pageKey) async {
    final result = await getTrendingMoviesUseCase(pageKey);
    return result.fold(
      (error) {
        emit(HomeState.error(error));
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
