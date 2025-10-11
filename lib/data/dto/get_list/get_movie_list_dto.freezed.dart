// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_movie_list_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetMovieListDto {
  int get page;
  @JsonKey(name: 'total_pages')
  int get totalPages;
  @JsonKey(name: 'total_results')
  int get totalResults;
  List<MovieDto> get results;

  /// Create a copy of GetMovieListDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetMovieListDtoCopyWith<GetMovieListDto> get copyWith =>
      _$GetMovieListDtoCopyWithImpl<GetMovieListDto>(
          this as GetMovieListDto, _$identity);

  /// Serializes this GetMovieListDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetMovieListDto &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            const DeepCollectionEquality().equals(other.results, results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, page, totalPages, totalResults,
      const DeepCollectionEquality().hash(results));

  @override
  String toString() {
    return 'GetMovieListDto(page: $page, totalPages: $totalPages, totalResults: $totalResults, results: $results)';
  }
}

/// @nodoc
abstract mixin class $GetMovieListDtoCopyWith<$Res> {
  factory $GetMovieListDtoCopyWith(
          GetMovieListDto value, $Res Function(GetMovieListDto) _then) =
      _$GetMovieListDtoCopyWithImpl;
  @useResult
  $Res call(
      {int page,
      @JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'total_results') int totalResults,
      List<MovieDto> results});
}

/// @nodoc
class _$GetMovieListDtoCopyWithImpl<$Res>
    implements $GetMovieListDtoCopyWith<$Res> {
  _$GetMovieListDtoCopyWithImpl(this._self, this._then);

  final GetMovieListDto _self;
  final $Res Function(GetMovieListDto) _then;

  /// Create a copy of GetMovieListDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? totalPages = null,
    Object? totalResults = null,
    Object? results = null,
  }) {
    return _then(_self.copyWith(
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _self.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: null == totalResults
          ? _self.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _self.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _GetMovieListDto implements GetMovieListDto {
  const _GetMovieListDto(
      {required this.page,
      @JsonKey(name: 'total_pages') required this.totalPages,
      @JsonKey(name: 'total_results') required this.totalResults,
      required final List<MovieDto> results})
      : _results = results;
  factory _GetMovieListDto.fromJson(Map<String, dynamic> json) =>
      _$GetMovieListDtoFromJson(json);

  @override
  final int page;
  @override
  @JsonKey(name: 'total_pages')
  final int totalPages;
  @override
  @JsonKey(name: 'total_results')
  final int totalResults;
  final List<MovieDto> _results;
  @override
  List<MovieDto> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  /// Create a copy of GetMovieListDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GetMovieListDtoCopyWith<_GetMovieListDto> get copyWith =>
      __$GetMovieListDtoCopyWithImpl<_GetMovieListDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GetMovieListDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetMovieListDto &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, page, totalPages, totalResults,
      const DeepCollectionEquality().hash(_results));

  @override
  String toString() {
    return 'GetMovieListDto(page: $page, totalPages: $totalPages, totalResults: $totalResults, results: $results)';
  }
}

/// @nodoc
abstract mixin class _$GetMovieListDtoCopyWith<$Res>
    implements $GetMovieListDtoCopyWith<$Res> {
  factory _$GetMovieListDtoCopyWith(
          _GetMovieListDto value, $Res Function(_GetMovieListDto) _then) =
      __$GetMovieListDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int page,
      @JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'total_results') int totalResults,
      List<MovieDto> results});
}

/// @nodoc
class __$GetMovieListDtoCopyWithImpl<$Res>
    implements _$GetMovieListDtoCopyWith<$Res> {
  __$GetMovieListDtoCopyWithImpl(this._self, this._then);

  final _GetMovieListDto _self;
  final $Res Function(_GetMovieListDto) _then;

  /// Create a copy of GetMovieListDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? page = null,
    Object? totalPages = null,
    Object? totalResults = null,
    Object? results = null,
  }) {
    return _then(_GetMovieListDto(
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _self.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: null == totalResults
          ? _self.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _self._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieDto>,
    ));
  }
}

// dart format on
