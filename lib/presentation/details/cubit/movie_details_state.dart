import 'package:binge_box/domain/entities/movie/movie.dart';
import 'package:binge_box/utils/app_error.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_details_state.freezed.dart';

@freezed
sealed class MovieDetailsState with _$MovieDetailsState {
  const factory MovieDetailsState.initial() = MovieDetailsInitial;
  const factory MovieDetailsState.loading() = MovieDetailsLoading;
  const factory MovieDetailsState.ready({
    required Movie movie,
    required bool bookmarked,
  }) = MovieDetailsReady;
  const factory MovieDetailsState.toggleBookmark(bool value) =
      MovieDetailsToggleBookmark;
  const factory MovieDetailsState.error(AppError error) = MovieDetailsError;
}
