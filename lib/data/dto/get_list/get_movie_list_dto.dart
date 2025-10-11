import 'package:binge_box/data/dto/movie/movie_dto.dart';
import 'package:binge_box/domain/entities/get_list/get_movie_list.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_movie_list_dto.freezed.dart';
part 'get_movie_list_dto.g.dart';

@freezed
abstract class GetMovieListDto with _$GetMovieListDto {
  const factory GetMovieListDto({
    required int page,
    @JsonKey(name: 'total_pages') required int totalPages,
    @JsonKey(name: 'total_results') required int totalResults,
    required List<MovieDto> results,
  }) = _GetMovieListDto;

  factory GetMovieListDto.fromJson(Map<String, dynamic> data) =>
      _$GetMovieListDtoFromJson(data);
}

extension GetMovieListDtoExtension on GetMovieListDto {
  GetMovieList toEntity() => GetMovieList(
        page: page,
        totalPages: totalPages,
        totalResults: totalResults,
        results: results.map((e) => e.toEntity()).toList(),
      );
}
