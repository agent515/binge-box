// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HomeState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HomeState()';
  }
}

/// @nodoc
class $HomeStateCopyWith<$Res> {
  $HomeStateCopyWith(HomeState _, $Res Function(HomeState) __);
}

/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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
    TResult Function(HomeInitial value)? initial,
    TResult Function(HomeLoading value)? loading,
    TResult Function(HomeReady value)? ready,
    TResult Function(HomeGoToDetailsPage value)? goToDetailsPage,
    TResult Function(HomeError value)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case HomeInitial() when initial != null:
        return initial(_that);
      case HomeLoading() when loading != null:
        return loading(_that);
      case HomeReady() when ready != null:
        return ready(_that);
      case HomeGoToDetailsPage() when goToDetailsPage != null:
        return goToDetailsPage(_that);
      case HomeError() when error != null:
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
    required TResult Function(HomeInitial value) initial,
    required TResult Function(HomeLoading value) loading,
    required TResult Function(HomeReady value) ready,
    required TResult Function(HomeGoToDetailsPage value) goToDetailsPage,
    required TResult Function(HomeError value) error,
  }) {
    final _that = this;
    switch (_that) {
      case HomeInitial():
        return initial(_that);
      case HomeLoading():
        return loading(_that);
      case HomeReady():
        return ready(_that);
      case HomeGoToDetailsPage():
        return goToDetailsPage(_that);
      case HomeError():
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
    TResult? Function(HomeInitial value)? initial,
    TResult? Function(HomeLoading value)? loading,
    TResult? Function(HomeReady value)? ready,
    TResult? Function(HomeGoToDetailsPage value)? goToDetailsPage,
    TResult? Function(HomeError value)? error,
  }) {
    final _that = this;
    switch (_that) {
      case HomeInitial() when initial != null:
        return initial(_that);
      case HomeLoading() when loading != null:
        return loading(_that);
      case HomeReady() when ready != null:
        return ready(_that);
      case HomeGoToDetailsPage() when goToDetailsPage != null:
        return goToDetailsPage(_that);
      case HomeError() when error != null:
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
    TResult Function()? ready,
    TResult Function(Movie movie)? goToDetailsPage,
    TResult Function(AppError error)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case HomeInitial() when initial != null:
        return initial();
      case HomeLoading() when loading != null:
        return loading();
      case HomeReady() when ready != null:
        return ready();
      case HomeGoToDetailsPage() when goToDetailsPage != null:
        return goToDetailsPage(_that.movie);
      case HomeError() when error != null:
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
    required TResult Function() ready,
    required TResult Function(Movie movie) goToDetailsPage,
    required TResult Function(AppError error) error,
  }) {
    final _that = this;
    switch (_that) {
      case HomeInitial():
        return initial();
      case HomeLoading():
        return loading();
      case HomeReady():
        return ready();
      case HomeGoToDetailsPage():
        return goToDetailsPage(_that.movie);
      case HomeError():
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
    TResult? Function()? ready,
    TResult? Function(Movie movie)? goToDetailsPage,
    TResult? Function(AppError error)? error,
  }) {
    final _that = this;
    switch (_that) {
      case HomeInitial() when initial != null:
        return initial();
      case HomeLoading() when loading != null:
        return loading();
      case HomeReady() when ready != null:
        return ready();
      case HomeGoToDetailsPage() when goToDetailsPage != null:
        return goToDetailsPage(_that.movie);
      case HomeError() when error != null:
        return error(_that.error);
      case _:
        return null;
    }
  }
}

/// @nodoc

class HomeInitial implements HomeState {
  const HomeInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HomeInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HomeState.initial()';
  }
}

/// @nodoc

class HomeLoading implements HomeState {
  const HomeLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HomeLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HomeState.loading()';
  }
}

/// @nodoc

class HomeReady implements HomeState {
  const HomeReady();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HomeReady);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HomeState.ready()';
  }
}

/// @nodoc

class HomeGoToDetailsPage implements HomeState {
  const HomeGoToDetailsPage(this.movie);

  final Movie movie;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeGoToDetailsPageCopyWith<HomeGoToDetailsPage> get copyWith =>
      _$HomeGoToDetailsPageCopyWithImpl<HomeGoToDetailsPage>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeGoToDetailsPage &&
            (identical(other.movie, movie) || other.movie == movie));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movie);

  @override
  String toString() {
    return 'HomeState.goToDetailsPage(movie: $movie)';
  }
}

/// @nodoc
abstract mixin class $HomeGoToDetailsPageCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory $HomeGoToDetailsPageCopyWith(
          HomeGoToDetailsPage value, $Res Function(HomeGoToDetailsPage) _then) =
      _$HomeGoToDetailsPageCopyWithImpl;
  @useResult
  $Res call({Movie movie});

  $MovieCopyWith<$Res> get movie;
}

/// @nodoc
class _$HomeGoToDetailsPageCopyWithImpl<$Res>
    implements $HomeGoToDetailsPageCopyWith<$Res> {
  _$HomeGoToDetailsPageCopyWithImpl(this._self, this._then);

  final HomeGoToDetailsPage _self;
  final $Res Function(HomeGoToDetailsPage) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? movie = null,
  }) {
    return _then(HomeGoToDetailsPage(
      null == movie
          ? _self.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as Movie,
    ));
  }

  /// Create a copy of HomeState
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

class HomeError implements HomeState {
  const HomeError(this.error);

  final AppError error;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeErrorCopyWith<HomeError> get copyWith =>
      _$HomeErrorCopyWithImpl<HomeError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'HomeState.error(error: $error)';
  }
}

/// @nodoc
abstract mixin class $HomeErrorCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory $HomeErrorCopyWith(HomeError value, $Res Function(HomeError) _then) =
      _$HomeErrorCopyWithImpl;
  @useResult
  $Res call({AppError error});
}

/// @nodoc
class _$HomeErrorCopyWithImpl<$Res> implements $HomeErrorCopyWith<$Res> {
  _$HomeErrorCopyWithImpl(this._self, this._then);

  final HomeError _self;
  final $Res Function(HomeError) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(HomeError(
      null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppError,
    ));
  }
}

// dart format on
