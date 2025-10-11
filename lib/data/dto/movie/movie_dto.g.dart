// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MovieDto _$MovieDtoFromJson(Map<String, dynamic> json) => _MovieDto(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      posterPath: json['poster_path'] as String?,
      backdropPath: json['backdrop_path'] as String?,
      originalTitle: json['original_title'] as String,
      releaseDate: json['release_date'] as String?,
      voteAverage: (json['vote_average'] as num).toDouble(),
      overview: json['overview'] as String?,
    );

Map<String, dynamic> _$MovieDtoToJson(_MovieDto instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'poster_path': instance.posterPath,
      'backdrop_path': instance.backdropPath,
      'original_title': instance.originalTitle,
      'release_date': instance.releaseDate,
      'vote_average': instance.voteAverage,
      'overview': instance.overview,
    };
