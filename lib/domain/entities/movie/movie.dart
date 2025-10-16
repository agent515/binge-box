import 'package:binge_box/data/dto/movie/movie_dto.dart';
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

extension MovieExtension on Movie {
  MovieDto toDto() {
    return MovieDto(
      id: id,
      title: title,
      posterPath:
          posterPath?.replaceFirst('https://image.tmdb.org/t/p/w500', ''),
      backdropPath:
          backdropPath?.replaceFirst('https://image.tmdb.org/t/p/w500', ''),
      originalTitle: originalTitle,
      releaseDate: releaseDate,
      voteAverage: voteAverage,
      overview: overview,
    );
  }
}
