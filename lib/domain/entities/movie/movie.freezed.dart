// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Movie {
  int get id;
  String get title;
  String? get posterPath;
  String? get backdropPath;
  String get originalTitle;
  String? get releaseDate;
  double get voteAverage;
  String? get overview;

  /// Create a copy of Movie
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MovieCopyWith<Movie> get copyWith =>
      _$MovieCopyWithImpl<Movie>(this as Movie, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Movie &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            (identical(other.originalTitle, originalTitle) ||
                other.originalTitle == originalTitle) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.overview, overview) ||
                other.overview == overview));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, posterPath,
      backdropPath, originalTitle, releaseDate, voteAverage, overview);

  @override
  String toString() {
    return 'Movie(id: $id, title: $title, posterPath: $posterPath, backdropPath: $backdropPath, originalTitle: $originalTitle, releaseDate: $releaseDate, voteAverage: $voteAverage, overview: $overview)';
  }
}

/// @nodoc
abstract mixin class $MovieCopyWith<$Res> {
  factory $MovieCopyWith(Movie value, $Res Function(Movie) _then) =
      _$MovieCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String title,
      String? posterPath,
      String? backdropPath,
      String originalTitle,
      String? releaseDate,
      double voteAverage,
      String? overview});
}

/// @nodoc
class _$MovieCopyWithImpl<$Res> implements $MovieCopyWith<$Res> {
  _$MovieCopyWithImpl(this._self, this._then);

  final Movie _self;
  final $Res Function(Movie) _then;

  /// Create a copy of Movie
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? posterPath = freezed,
    Object? backdropPath = freezed,
    Object? originalTitle = null,
    Object? releaseDate = freezed,
    Object? voteAverage = null,
    Object? overview = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: freezed == posterPath
          ? _self.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      backdropPath: freezed == backdropPath
          ? _self.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: null == originalTitle
          ? _self.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: freezed == releaseDate
          ? _self.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      voteAverage: null == voteAverage
          ? _self.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      overview: freezed == overview
          ? _self.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Movie].
extension MoviePatterns on Movie {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Movie value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Movie() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_Movie value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Movie():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Movie value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Movie() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int id,
            String title,
            String? posterPath,
            String? backdropPath,
            String originalTitle,
            String? releaseDate,
            double voteAverage,
            String? overview)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Movie() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.posterPath,
            _that.backdropPath,
            _that.originalTitle,
            _that.releaseDate,
            _that.voteAverage,
            _that.overview);
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
  TResult when<TResult extends Object?>(
    TResult Function(
            int id,
            String title,
            String? posterPath,
            String? backdropPath,
            String originalTitle,
            String? releaseDate,
            double voteAverage,
            String? overview)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Movie():
        return $default(
            _that.id,
            _that.title,
            _that.posterPath,
            _that.backdropPath,
            _that.originalTitle,
            _that.releaseDate,
            _that.voteAverage,
            _that.overview);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int id,
            String title,
            String? posterPath,
            String? backdropPath,
            String originalTitle,
            String? releaseDate,
            double voteAverage,
            String? overview)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Movie() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.posterPath,
            _that.backdropPath,
            _that.originalTitle,
            _that.releaseDate,
            _that.voteAverage,
            _that.overview);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Movie implements Movie {
  const _Movie(
      {required this.id,
      required this.title,
      this.posterPath,
      this.backdropPath,
      required this.originalTitle,
      this.releaseDate,
      required this.voteAverage,
      this.overview});

  @override
  final int id;
  @override
  final String title;
  @override
  final String? posterPath;
  @override
  final String? backdropPath;
  @override
  final String originalTitle;
  @override
  final String? releaseDate;
  @override
  final double voteAverage;
  @override
  final String? overview;

  /// Create a copy of Movie
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MovieCopyWith<_Movie> get copyWith =>
      __$MovieCopyWithImpl<_Movie>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Movie &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            (identical(other.originalTitle, originalTitle) ||
                other.originalTitle == originalTitle) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.overview, overview) ||
                other.overview == overview));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, posterPath,
      backdropPath, originalTitle, releaseDate, voteAverage, overview);

  @override
  String toString() {
    return 'Movie(id: $id, title: $title, posterPath: $posterPath, backdropPath: $backdropPath, originalTitle: $originalTitle, releaseDate: $releaseDate, voteAverage: $voteAverage, overview: $overview)';
  }
}

/// @nodoc
abstract mixin class _$MovieCopyWith<$Res> implements $MovieCopyWith<$Res> {
  factory _$MovieCopyWith(_Movie value, $Res Function(_Movie) _then) =
      __$MovieCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String? posterPath,
      String? backdropPath,
      String originalTitle,
      String? releaseDate,
      double voteAverage,
      String? overview});
}

/// @nodoc
class __$MovieCopyWithImpl<$Res> implements _$MovieCopyWith<$Res> {
  __$MovieCopyWithImpl(this._self, this._then);

  final _Movie _self;
  final $Res Function(_Movie) _then;

  /// Create a copy of Movie
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? posterPath = freezed,
    Object? backdropPath = freezed,
    Object? originalTitle = null,
    Object? releaseDate = freezed,
    Object? voteAverage = null,
    Object? overview = freezed,
  }) {
    return _then(_Movie(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: freezed == posterPath
          ? _self.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      backdropPath: freezed == backdropPath
          ? _self.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: null == originalTitle
          ? _self.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: freezed == releaseDate
          ? _self.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      voteAverage: null == voteAverage
          ? _self.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      overview: freezed == overview
          ? _self.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
