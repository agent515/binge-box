import 'package:binge_box/domain/entities/movie/movie.dart';
import 'package:binge_box/injectable/service_locator.dart';
import 'package:binge_box/presentation/details/cubit/movie_details_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MovieDetailsPage extends StatelessWidget {
  const MovieDetailsPage({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<MovieDetailsCubit>(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Movie Details'),
        ),
        body: Center(
          child: Text('Movie Details Content'),
        ),
      ),
    );
  }
}
