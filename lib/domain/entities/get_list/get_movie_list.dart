import 'package:binge_box/domain/entities/movie/movie.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_movie_list.freezed.dart';

@freezed
abstract class GetMovieList with _$GetMovieList {
  const factory GetMovieList({
    required int page,
    required int totalPages,
    required int totalResults,
    required List<Movie> results,
  }) = _GetMovieList;
}
