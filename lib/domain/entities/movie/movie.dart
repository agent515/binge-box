import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.freezed.dart';

@freezed
abstract class Movie with _$Movie {
  const factory Movie({
    required int id,
    required String title,
    String? posterPath,
    String? backdropPath,
    required String originalTitle,
    String? releaseDate,
    required double voteAverage,
    String? overview,
  }) = _Movie;
}
