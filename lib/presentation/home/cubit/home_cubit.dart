import 'dart:async';

import 'package:binge_box/domain/entities/movie/movie.dart';
import 'package:binge_box/domain/use_cases/get_now_playing_movies_use_case.dart';
import 'package:binge_box/domain/use_cases/get_trending_movies_use_case.dart';
import 'package:binge_box/domain/use_cases/search_movies_use_case.dart';
import 'package:binge_box/domain/use_cases/get_bookmarked_movies_use_case.dart';
import 'package:binge_box/presentation/home/cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  HomeCubit(
    this.getTrendingMoviesUseCase,
    this.getNowPlayingMoviesUseCase,
    this.searchMoviesUseCase,
    this.getBookmarkedMoviesUseCase,
  ) : super(HomeState.ready());

  final GetTrendingMoviesUseCase getTrendingMoviesUseCase;
  final GetNowPlayingMoviesUseCase getNowPlayingMoviesUseCase;
  final SearchMoviesUseCase searchMoviesUseCase;
  final GetBookmarkedMoviesUseCase getBookmarkedMoviesUseCase;

  int totalTrendingPages = 1;
  int totalNowPlayingPages = 1;
  int totalBookmarkedPages = 1;

  Future<List<Movie>> fetchTrendingMoviesPage(int pageKey) async {
    if (pageKey > totalTrendingPages) return <Movie>[];
    final result = await getTrendingMoviesUseCase(pageKey);
    return result.fold(
      (error) {
        return [];
      },
      (movieList) {
        totalTrendingPages = movieList.totalPages;
        return movieList.results;
      },
    );
  }

  Future<List<Movie>> fetchNowPlayingMoviesPage(int pageKey) async {
    if (pageKey > totalTrendingPages) return <Movie>[];
    final result = await getNowPlayingMoviesUseCase(pageKey);
    return result.fold(
      (error) {
        return [];
      },
      (movieList) {
        totalNowPlayingPages = movieList.totalPages;
        return movieList.results;
      },
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

  Future<List<Movie>> fetchBookmarkedMoviesPage(int pageKey) async {
    if (pageKey > totalBookmarkedPages) return <Movie>[];
    final result = await getBookmarkedMoviesUseCase(pageKey);
    return result.fold(
      (error) => [],
      (movieList) {
        totalBookmarkedPages = movieList.totalPages;
        return movieList.results;
      },
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
