import 'package:binge_box/domain/entities/movie/movie.dart';
import 'package:binge_box/presentation/widgets/movie_card.dart';
import 'package:flutter/material.dart';

class MovieGrid extends StatelessWidget {
  const MovieGrid({
    super.key,
    required this.movies,
    required this.onMovieTap,
  });

  final List<Movie> movies;
  final void Function(Movie movie) onMovieTap;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        mainAxisExtent: 232,
      ),
      itemBuilder: (context, index) {
        final movie = movies[index];
        return MovieCard(
          movie: movie,
          onTap: () => onMovieTap(movie),
        );
      },
      itemCount: movies.length,
    );
  }
}
