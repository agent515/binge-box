import 'dart:async';

import 'package:binge_box/domain/entities/movie/movie.dart';
import 'package:binge_box/domain/use_cases/get_now_playing_movies_use_case.dart';
import 'package:binge_box/domain/use_cases/get_trending_movies_use_case.dart';
import 'package:binge_box/domain/use_cases/search_movies_use_case.dart';
import 'package:binge_box/domain/use_cases/get_bookmarked_movies_use_case.dart';
import 'package:binge_box/domain/use_cases/get_bookmarks_changed_use_case.dart';
import 'package:binge_box/presentation/home/cubit/home_state.dart';
import 'package:binge_box/domain/entities/bookmark_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  HomeCubit(
    this._getTrendingMoviesUseCase,
    this._getNowPlayingMoviesUseCase,
    this._searchMoviesUseCase,
    this._getBookmarkedMoviesUseCase,
    this._getBookmarksChangedUseCase,
  ) : super(HomeState.ready());

  final GetTrendingMoviesUseCase _getTrendingMoviesUseCase;
  final GetNowPlayingMoviesUseCase _getNowPlayingMoviesUseCase;
  final SearchMoviesUseCase _searchMoviesUseCase;
  final GetBookmarkedMoviesUseCase _getBookmarkedMoviesUseCase;
  final GetBookmarksChangedUseCase _getBookmarksChangedUseCase;
  Stream<BookmarkEvent>? _bookmarksStream;

  int totalTrendingPages = 1;
  int totalNowPlayingPages = 1;
  int totalBookmarkedPages = 1;
  // (removed counter-based refresh)

  Future<List<Movie>> fetchTrendingMoviesPage(int pageKey) async {
    if (pageKey > totalTrendingPages) return <Movie>[];
    final result = await _getTrendingMoviesUseCase(pageKey);
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
    final result = await _getNowPlayingMoviesUseCase(pageKey);
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
    final result = await _searchMoviesUseCase(
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
    final result = await _getBookmarkedMoviesUseCase(pageKey);
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

  // Bookmark updates are emitted via the bookmarksChanged stream use case.

  Stream<BookmarkEvent> get bookmarksChanged {
    // Lazily initialize the stream from the use case.
    if (_bookmarksStream == null) {
      _initBookmarksStream();
    }
    return _bookmarksStream ?? const Stream.empty();
  }

  Future<void> _initBookmarksStream() async {
    _bookmarksStream = _getBookmarksChangedUseCase();
  }
}
