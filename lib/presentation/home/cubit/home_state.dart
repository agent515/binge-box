import 'package:binge_box/domain/entities/movie/movie.dart';
import 'package:binge_box/utils/app_error.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
sealed class HomeState with _$HomeState {
  const factory HomeState.initial() = HomeInitial;
  const factory HomeState.loading() = HomeLoading;
  const factory HomeState.ready({
    required List<Movie> trendingMovies,
    required List<Movie> nowPlayingMovies,
  }) = HomeReady;
  const factory HomeState.goToDetailsPage(int id) = HomeGoToDetailsPage;
  const factory HomeState.error(AppError error) = HomeError;
}
