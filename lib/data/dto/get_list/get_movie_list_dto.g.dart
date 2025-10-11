// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_movie_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetMovieListDto _$GetMovieListDtoFromJson(Map<String, dynamic> json) =>
    _GetMovieListDto(
      page: (json['page'] as num).toInt(),
      totalPages: (json['total_pages'] as num).toInt(),
      totalResults: (json['total_results'] as num).toInt(),
      results: (json['results'] as List<dynamic>)
          .map((e) => MovieDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetMovieListDtoToJson(_GetMovieListDto instance) =>
    <String, dynamic>{
      'page': instance.page,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
      'results': instance.results,
    };
