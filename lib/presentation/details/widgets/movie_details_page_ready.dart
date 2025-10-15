import 'package:binge_box/domain/entities/movie/movie.dart';
import 'package:binge_box/presentation/details/widgets/movie_details_other_info_section.dart';
import 'package:binge_box/presentation/details/widgets/movie_details_poster_section.dart';
import 'package:flutter/material.dart';

class MovieDetailsPageReady extends StatelessWidget {
  const MovieDetailsPageReady({
    super.key,
    required this.movie,
    required this.bookmarked,
  });

  final Movie movie;
  final bool bookmarked;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          MovieDetailsPosterSection(
            movie: movie,
            bookmarked: bookmarked,
          ),
          MovieDetailsOtherInfoSection(movie: movie),
        ],
      ),
    );
  }
}
