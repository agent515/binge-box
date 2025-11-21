// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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

/// Adds pattern-matching-related methods to [MovieDetailsState].
extension MovieDetailsStatePatterns on MovieDetailsState {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieDetailsInitial value)? initial,
    TResult Function(MovieDetailsLoading value)? loading,
    TResult Function(MovieDetailsReady value)? ready,
    TResult Function(MovieDetailsToggleBookmark value)? toggleBookmark,
    TResult Function(MovieDetailsError value)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case MovieDetailsInitial() when initial != null:
        return initial(_that);
      case MovieDetailsLoading() when loading != null:
        return loading(_that);
      case MovieDetailsReady() when ready != null:
        return ready(_that);
      case MovieDetailsToggleBookmark() when toggleBookmark != null:
        return toggleBookmark(_that);
      case MovieDetailsError() when error != null:
        return error(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieDetailsInitial value) initial,
    required TResult Function(MovieDetailsLoading value) loading,
    required TResult Function(MovieDetailsReady value) ready,
    required TResult Function(MovieDetailsToggleBookmark value) toggleBookmark,
    required TResult Function(MovieDetailsError value) error,
  }) {
    final _that = this;
    switch (_that) {
      case MovieDetailsInitial():
        return initial(_that);
      case MovieDetailsLoading():
        return loading(_that);
      case MovieDetailsReady():
        return ready(_that);
      case MovieDetailsToggleBookmark():
        return toggleBookmark(_that);
      case MovieDetailsError():
        return error(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MovieDetailsInitial value)? initial,
    TResult? Function(MovieDetailsLoading value)? loading,
    TResult? Function(MovieDetailsReady value)? ready,
    TResult? Function(MovieDetailsToggleBookmark value)? toggleBookmark,
    TResult? Function(MovieDetailsError value)? error,
  }) {
    final _that = this;
    switch (_that) {
      case MovieDetailsInitial() when initial != null:
        return initial(_that);
      case MovieDetailsLoading() when loading != null:
        return loading(_that);
      case MovieDetailsReady() when ready != null:
        return ready(_that);
      case MovieDetailsToggleBookmark() when toggleBookmark != null:
        return toggleBookmark(_that);
      case MovieDetailsError() when error != null:
        return error(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Movie movie, bool bookmarked)? ready,
    TResult Function(bool value)? toggleBookmark,
    TResult Function(AppError error)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case MovieDetailsInitial() when initial != null:
        return initial();
      case MovieDetailsLoading() when loading != null:
        return loading();
      case MovieDetailsReady() when ready != null:
        return ready(_that.movie, _that.bookmarked);
      case MovieDetailsToggleBookmark() when toggleBookmark != null:
        return toggleBookmark(_that.value);
      case MovieDetailsError() when error != null:
        return error(_that.error);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Movie movie, bool bookmarked) ready,
    required TResult Function(bool value) toggleBookmark,
    required TResult Function(AppError error) error,
  }) {
    final _that = this;
    switch (_that) {
      case MovieDetailsInitial():
        return initial();
      case MovieDetailsLoading():
        return loading();
      case MovieDetailsReady():
        return ready(_that.movie, _that.bookmarked);
      case MovieDetailsToggleBookmark():
        return toggleBookmark(_that.value);
      case MovieDetailsError():
        return error(_that.error);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Movie movie, bool bookmarked)? ready,
    TResult? Function(bool value)? toggleBookmark,
    TResult? Function(AppError error)? error,
  }) {
    final _that = this;
    switch (_that) {
      case MovieDetailsInitial() when initial != null:
        return initial();
      case MovieDetailsLoading() when loading != null:
        return loading();
      case MovieDetailsReady() when ready != null:
        return ready(_that.movie, _that.bookmarked);
      case MovieDetailsToggleBookmark() when toggleBookmark != null:
        return toggleBookmark(_that.value);
      case MovieDetailsError() when error != null:
        return error(_that.error);
      case _:
        return null;
    }
  }
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
