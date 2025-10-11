import "package:binge_box/domain/entities/movie/movie.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part 'movie_dto.freezed.dart';
part 'movie_dto.g.dart';

@freezed
abstract class MovieDto with _$MovieDto {
  const factory MovieDto({
    required int id,
    required String title,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    @JsonKey(name: 'original_title') required String originalTitle,
    @JsonKey(name: 'release_date') String? releaseDate,
    @JsonKey(name: 'vote_average') required double voteAverage,
    String? overview,
  }) = _MovieDto;

  factory MovieDto.fromJson(Map<String, dynamic> data) =>
      _$MovieDtoFromJson(data);
}

extension MovieDtoExtension on MovieDto {
  Movie toEntity() => Movie(
        id: id,
        title: title,
        posterPath: 'https://image.tmdb.org/t/p/w500$posterPath',
        backdropPath: 'https://image.tmdb.org/t/p/w500$backdropPath',
        originalTitle: originalTitle,
        releaseDate: releaseDate,
        voteAverage: voteAverage,
        overview: overview,
      );
}
