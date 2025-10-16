import 'package:binge_box/domain/entities/movie/movie.dart';
import 'package:binge_box/presentation/details/cubit/movie_details_state.dart';
import 'package:binge_box/utils/app_error.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:binge_box/domain/use_cases/check_bookmark_use_case.dart';
import 'package:binge_box/domain/use_cases/toggle_bookmark_use_case.dart';

@injectable
class MovieDetailsCubit extends Cubit<MovieDetailsState> {
  MovieDetailsCubit(
    this._checkBookmarkUseCase,
    this._toggleBookmarkUseCase,
    @factoryParam Movie movie,
  )   : _movie = movie,
        super(MovieDetailsState.initial()) {
    _init();
  }

  final CheckBookmarkUseCase _checkBookmarkUseCase;
  final ToggleBookmarkUseCase _toggleBookmarkUseCase;
  final Movie _movie;
  bool _bookmarked = false;

  Future<void> _init() async {
    final result = await _checkBookmarkUseCase(_movie.id);
    return result.fold(
      (error) => emitError(error),
      (isBookmarked) {
        _bookmarked = isBookmarked;
        emitReady();
      },
    );
  }

  void emitLoading() {
    emit(MovieDetailsState.loading());
  }

  void emitError(AppError error) {
    emit(MovieDetailsState.error(error));
  }

  void emitReady() {
    emit(
      MovieDetailsState.ready(
        movie: _movie,
        bookmarked: _bookmarked,
      ),
    );
  }

  Future<void> toggleBookmark() async {
    final result = await _toggleBookmarkUseCase(_movie.id);
    result.fold(
      (error) => emitError(error),
      (isBookmarked) {
        _bookmarked = isBookmarked;
        emitReady();
      },
    );
  }
}
