import 'package:auto_route/auto_route.dart';
import 'package:binge_box/domain/entities/movie/movie.dart';
import 'package:binge_box/injectable/service_locator.dart';
import 'package:binge_box/presentation/details/cubit/movie_details_cubit.dart';
import 'package:binge_box/presentation/details/cubit/movie_details_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class MovieDetailsPage extends StatelessWidget {
  const MovieDetailsPage({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<MovieDetailsCubit>(param1: movie),
      child: BlocConsumer<MovieDetailsCubit, MovieDetailsState>(
        listener: (context, state) async {},
        builder: (context, state) {
          switch (state) {
            case MovieDetailsLoading():
              return Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            case MovieDetailsReady(:final movie, :final bookmarked):
              return Scaffold(
                appBar: AppBar(
                  title: Text(movie.title),
                ),
                body: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Title: ${movie.title}'),
                      Text('Bookmarked: $bookmarked'),
                    ],
                  ),
                ),
              );
            case MovieDetailsError(:final error):
              return Scaffold(
                body: Center(
                  child: Text('Movie Details Error: ${error.toString()}'),
                ),
              );
            default:
              return Container();
          }
        },
      ),
    );
  }
}
