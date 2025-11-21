// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:binge_box/domain/entities/movie/movie.dart' as _i5;
import 'package:binge_box/presentation/details/movie_details_page.dart' as _i2;
import 'package:binge_box/presentation/home/home_page.dart' as _i1;
import 'package:flutter/material.dart' as _i4;

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i3.PageRouteInfo<void> {
  const HomeRoute({List<_i3.PageRouteInfo>? children})
      : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i1.HomePage();
    },
  );
}

/// generated route for
/// [_i2.MovieDetailsPage]
class MovieDetailsRoute extends _i3.PageRouteInfo<MovieDetailsRouteArgs> {
  MovieDetailsRoute({
    _i4.Key? key,
    required _i5.Movie movie,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          MovieDetailsRoute.name,
          args: MovieDetailsRouteArgs(key: key, movie: movie),
          initialChildren: children,
        );

  static const String name = 'MovieDetailsRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MovieDetailsRouteArgs>();
      return _i2.MovieDetailsPage(key: args.key, movie: args.movie);
    },
  );
}

class MovieDetailsRouteArgs {
  const MovieDetailsRouteArgs({this.key, required this.movie});

  final _i4.Key? key;

  final _i5.Movie movie;

  @override
  String toString() {
    return 'MovieDetailsRouteArgs{key: $key, movie: $movie}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! MovieDetailsRouteArgs) return false;
    return key == other.key && movie == other.movie;
  }

  @override
  int get hashCode => key.hashCode ^ movie.hashCode;
}
