// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_movie_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetMovieList {
  int get page;
  int get totalPages;
  int get totalResults;
  List<Movie> get results;

  /// Create a copy of GetMovieList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetMovieListCopyWith<GetMovieList> get copyWith =>
      _$GetMovieListCopyWithImpl<GetMovieList>(
          this as GetMovieList, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetMovieList &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            const DeepCollectionEquality().equals(other.results, results));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, totalPages, totalResults,
      const DeepCollectionEquality().hash(results));

  @override
  String toString() {
    return 'GetMovieList(page: $page, totalPages: $totalPages, totalResults: $totalResults, results: $results)';
  }
}

/// @nodoc
abstract mixin class $GetMovieListCopyWith<$Res> {
  factory $GetMovieListCopyWith(
          GetMovieList value, $Res Function(GetMovieList) _then) =
      _$GetMovieListCopyWithImpl;
  @useResult
  $Res call({int page, int totalPages, int totalResults, List<Movie> results});
}

/// @nodoc
class _$GetMovieListCopyWithImpl<$Res> implements $GetMovieListCopyWith<$Res> {
  _$GetMovieListCopyWithImpl(this._self, this._then);

  final GetMovieList _self;
  final $Res Function(GetMovieList) _then;

  /// Create a copy of GetMovieList
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
              as List<Movie>,
    ));
  }
}

/// Adds pattern-matching-related methods to [GetMovieList].
extension GetMovieListPatterns on GetMovieList {
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
    TResult Function(_GetMovieList value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetMovieList() when $default != null:
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
    TResult Function(_GetMovieList value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetMovieList():
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
    TResult? Function(_GetMovieList value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetMovieList() when $default != null:
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
            int page, int totalPages, int totalResults, List<Movie> results)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetMovieList() when $default != null:
        return $default(
            _that.page, _that.totalPages, _that.totalResults, _that.results);
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
            int page, int totalPages, int totalResults, List<Movie> results)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetMovieList():
        return $default(
            _that.page, _that.totalPages, _that.totalResults, _that.results);
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
            int page, int totalPages, int totalResults, List<Movie> results)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetMovieList() when $default != null:
        return $default(
            _that.page, _that.totalPages, _that.totalResults, _that.results);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _GetMovieList implements GetMovieList {
  const _GetMovieList(
      {required this.page,
      required this.totalPages,
      required this.totalResults,
      required final List<Movie> results})
      : _results = results;

  @override
  final int page;
  @override
  final int totalPages;
  @override
  final int totalResults;
  final List<Movie> _results;
  @override
  List<Movie> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  /// Create a copy of GetMovieList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GetMovieListCopyWith<_GetMovieList> get copyWith =>
      __$GetMovieListCopyWithImpl<_GetMovieList>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetMovieList &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, totalPages, totalResults,
      const DeepCollectionEquality().hash(_results));

  @override
  String toString() {
    return 'GetMovieList(page: $page, totalPages: $totalPages, totalResults: $totalResults, results: $results)';
  }
}

/// @nodoc
abstract mixin class _$GetMovieListCopyWith<$Res>
    implements $GetMovieListCopyWith<$Res> {
  factory _$GetMovieListCopyWith(
          _GetMovieList value, $Res Function(_GetMovieList) _then) =
      __$GetMovieListCopyWithImpl;
  @override
  @useResult
  $Res call({int page, int totalPages, int totalResults, List<Movie> results});
}

/// @nodoc
class __$GetMovieListCopyWithImpl<$Res>
    implements _$GetMovieListCopyWith<$Res> {
  __$GetMovieListCopyWithImpl(this._self, this._then);

  final _GetMovieList _self;
  final $Res Function(_GetMovieList) _then;

  /// Create a copy of GetMovieList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? page = null,
    Object? totalPages = null,
    Object? totalResults = null,
    Object? results = null,
  }) {
    return _then(_GetMovieList(
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
              as List<Movie>,
    ));
  }
}

// dart format on
