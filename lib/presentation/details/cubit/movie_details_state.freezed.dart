// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MovieDetailsState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MovieDetailsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MovieDetailsState()';
  }
}

/// @nodoc
class $MovieDetailsStateCopyWith<$Res> {
  $MovieDetailsStateCopyWith(
      MovieDetailsState _, $Res Function(MovieDetailsState) __);
}

/// @nodoc

class MovieDetailsInitial implements MovieDetailsState {
  const MovieDetailsInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MovieDetailsInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MovieDetailsState.initial()';
  }
}

/// @nodoc

class MovieDetailsLoading implements MovieDetailsState {
  const MovieDetailsLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MovieDetailsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MovieDetailsState.loading()';
  }
}

/// @nodoc

class MovieDetailsReady implements MovieDetailsState {
  const MovieDetailsReady({required this.movie, required this.bookmarked});

  final Movie movie;
  final bool bookmarked;

  /// Create a copy of MovieDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MovieDetailsReadyCopyWith<MovieDetailsReady> get copyWith =>
      _$MovieDetailsReadyCopyWithImpl<MovieDetailsReady>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MovieDetailsReady &&
            (identical(other.movie, movie) || other.movie == movie) &&
            (identical(other.bookmarked, bookmarked) ||
                other.bookmarked == bookmarked));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movie, bookmarked);

  @override
  String toString() {
    return 'MovieDetailsState.ready(movie: $movie, bookmarked: $bookmarked)';
  }
}

/// @nodoc
abstract mixin class $MovieDetailsReadyCopyWith<$Res>
    implements $MovieDetailsStateCopyWith<$Res> {
  factory $MovieDetailsReadyCopyWith(
          MovieDetailsReady value, $Res Function(MovieDetailsReady) _then) =
      _$MovieDetailsReadyCopyWithImpl;
  @useResult
  $Res call({Movie movie, bool bookmarked});

  $MovieCopyWith<$Res> get movie;
}

/// @nodoc
class _$MovieDetailsReadyCopyWithImpl<$Res>
    implements $MovieDetailsReadyCopyWith<$Res> {
  _$MovieDetailsReadyCopyWithImpl(this._self, this._then);

  final MovieDetailsReady _self;
  final $Res Function(MovieDetailsReady) _then;

  /// Create a copy of MovieDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? movie = null,
    Object? bookmarked = null,
  }) {
    return _then(MovieDetailsReady(
      movie: null == movie
          ? _self.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as Movie,
      bookmarked: null == bookmarked
          ? _self.bookmarked
          : bookmarked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of MovieDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MovieCopyWith<$Res> get movie {
    return $MovieCopyWith<$Res>(_self.movie, (value) {
      return _then(_self.copyWith(movie: value));
    });
  }
}

/// @nodoc

class MovieDetailsToggleBookmark implements MovieDetailsState {
  const MovieDetailsToggleBookmark(this.value);

  final bool value;

  /// Create a copy of MovieDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MovieDetailsToggleBookmarkCopyWith<MovieDetailsToggleBookmark>
      get copyWith =>
          _$MovieDetailsToggleBookmarkCopyWithImpl<MovieDetailsToggleBookmark>(
              this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MovieDetailsToggleBookmark &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'MovieDetailsState.toggleBookmark(value: $value)';
  }
}

/// @nodoc
abstract mixin class $MovieDetailsToggleBookmarkCopyWith<$Res>
    implements $MovieDetailsStateCopyWith<$Res> {
  factory $MovieDetailsToggleBookmarkCopyWith(MovieDetailsToggleBookmark value,
          $Res Function(MovieDetailsToggleBookmark) _then) =
      _$MovieDetailsToggleBookmarkCopyWithImpl;
  @useResult
  $Res call({bool value});
}

/// @nodoc
class _$MovieDetailsToggleBookmarkCopyWithImpl<$Res>
    implements $MovieDetailsToggleBookmarkCopyWith<$Res> {
  _$MovieDetailsToggleBookmarkCopyWithImpl(this._self, this._then);

  final MovieDetailsToggleBookmark _self;
  final $Res Function(MovieDetailsToggleBookmark) _then;

  /// Create a copy of MovieDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(MovieDetailsToggleBookmark(
      null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class MovieDetailsError implements MovieDetailsState {
  const MovieDetailsError(this.error);

  final AppError error;

  /// Create a copy of MovieDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MovieDetailsErrorCopyWith<MovieDetailsError> get copyWith =>
      _$MovieDetailsErrorCopyWithImpl<MovieDetailsError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MovieDetailsError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'MovieDetailsState.error(error: $error)';
  }
}

/// @nodoc
abstract mixin class $MovieDetailsErrorCopyWith<$Res>
    implements $MovieDetailsStateCopyWith<$Res> {
  factory $MovieDetailsErrorCopyWith(
          MovieDetailsError value, $Res Function(MovieDetailsError) _then) =
      _$MovieDetailsErrorCopyWithImpl;
  @useResult
  $Res call({AppError error});
}

/// @nodoc
class _$MovieDetailsErrorCopyWithImpl<$Res>
    implements $MovieDetailsErrorCopyWith<$Res> {
  _$MovieDetailsErrorCopyWithImpl(this._self, this._then);

  final MovieDetailsError _self;
  final $Res Function(MovieDetailsError) _then;

  /// Create a copy of MovieDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(MovieDetailsError(
      null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppError,
    ));
  }
}

// dart format on
