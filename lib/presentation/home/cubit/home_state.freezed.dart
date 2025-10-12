// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
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
  const HomeReady(
      {required final List<Movie> trendingMovies,
      required final List<Movie> nowPlayingMovies})
      : _trendingMovies = trendingMovies,
        _nowPlayingMovies = nowPlayingMovies;

  final List<Movie> _trendingMovies;
  List<Movie> get trendingMovies {
    if (_trendingMovies is EqualUnmodifiableListView) return _trendingMovies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trendingMovies);
  }

  final List<Movie> _nowPlayingMovies;
  List<Movie> get nowPlayingMovies {
    if (_nowPlayingMovies is EqualUnmodifiableListView)
      return _nowPlayingMovies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nowPlayingMovies);
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeReadyCopyWith<HomeReady> get copyWith =>
      _$HomeReadyCopyWithImpl<HomeReady>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeReady &&
            const DeepCollectionEquality()
                .equals(other._trendingMovies, _trendingMovies) &&
            const DeepCollectionEquality()
                .equals(other._nowPlayingMovies, _nowPlayingMovies));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_trendingMovies),
      const DeepCollectionEquality().hash(_nowPlayingMovies));

  @override
  String toString() {
    return 'HomeState.ready(trendingMovies: $trendingMovies, nowPlayingMovies: $nowPlayingMovies)';
  }
}

/// @nodoc
abstract mixin class $HomeReadyCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory $HomeReadyCopyWith(HomeReady value, $Res Function(HomeReady) _then) =
      _$HomeReadyCopyWithImpl;
  @useResult
  $Res call({List<Movie> trendingMovies, List<Movie> nowPlayingMovies});
}

/// @nodoc
class _$HomeReadyCopyWithImpl<$Res> implements $HomeReadyCopyWith<$Res> {
  _$HomeReadyCopyWithImpl(this._self, this._then);

  final HomeReady _self;
  final $Res Function(HomeReady) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? trendingMovies = null,
    Object? nowPlayingMovies = null,
  }) {
    return _then(HomeReady(
      trendingMovies: null == trendingMovies
          ? _self._trendingMovies
          : trendingMovies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      nowPlayingMovies: null == nowPlayingMovies
          ? _self._nowPlayingMovies
          : nowPlayingMovies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ));
  }
}

/// @nodoc

class HomeGoToDetailsPage implements HomeState {
  const HomeGoToDetailsPage(this.id);

  final int id;

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
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  String toString() {
    return 'HomeState.goToDetailsPage(id: $id)';
  }
}

/// @nodoc
abstract mixin class $HomeGoToDetailsPageCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory $HomeGoToDetailsPageCopyWith(
          HomeGoToDetailsPage value, $Res Function(HomeGoToDetailsPage) _then) =
      _$HomeGoToDetailsPageCopyWithImpl;
  @useResult
  $Res call({int id});
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
    Object? id = null,
  }) {
    return _then(HomeGoToDetailsPage(
      null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
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
