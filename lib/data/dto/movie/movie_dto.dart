import "package:binge_box/data/local/drift_database.dart";
import "package:binge_box/domain/entities/movie/movie.dart";
import "package:drift/drift.dart" hide JsonKey;
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
        posterPath: posterPath != null
            ? 'https://image.tmdb.org/t/p/w500$posterPath'
            : null,
        backdropPath: backdropPath != null
            ? 'https://image.tmdb.org/t/p/w500$backdropPath'
            : null,
        originalTitle: originalTitle,
        releaseDate: releaseDate,
        voteAverage: voteAverage,
        overview: overview,
      );

  Insertable<Movy> toCompanion({String source = 'unknown'}) {
    return RawValuesInsertable({
      'id': Constant(id),
      'source': Constant(source),
      'title': Constant(title),
      'poster_path': Constant(posterPath),
      'backdrop_path': Constant(backdropPath),
      'original_title': Constant(originalTitle),
      'release_date': Constant(releaseDate),
      'vote_average': Constant(voteAverage),
      'overview': Constant(overview),
    });
  }
}

extension MovyExtension on Movy {
  Movie toEntity() => Movie(
        id: id,
        title: title,
        posterPath: posterPath != null
            ? 'https://image.tmdb.org/t/p/w500$posterPath'
            : null,
        backdropPath: backdropPath != null
            ? 'https://image.tmdb.org/t/p/w500$backdropPath'
            : null,
        originalTitle: originalTitle,
        releaseDate: releaseDate,
        voteAverage: voteAverage,
        overview: overview,
      );
}
