import 'package:binge_box/domain/entities/movie/movie.dart';
import 'package:binge_box/presentation/details/cubit/movie_details_state.dart';
import 'package:binge_box/utils/app_error.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class MovieDetailsCubit extends Cubit<MovieDetailsState> {
  MovieDetailsCubit(
    @factoryParam this._movie,
  ) : super(MovieDetailsState.initial()) {
    emitReady();
  }

  final Movie _movie;
  bool _bookmarked = false;

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
}
