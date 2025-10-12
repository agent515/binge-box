import 'package:binge_box/domain/entities/movie/movie.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({
    super.key,
    required this.movie,
    required this.onTap,
  });

  final Movie movie;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            AspectRatio(
              aspectRatio: 9 / 16,
              child: CachedNetworkImage(
                imageUrl: movie.posterPath ?? '',
                fit: BoxFit.cover,
                height: 232,
                placeholder: (context, url) => Shimmer(
                  child: SizedBox(
                    width: double.infinity,
                    height: 232,
                  ),
                ), // Or any other placeholder widget
                errorWidget: (context, url, error) =>
                    Center(child: Icon(Icons.error)), // Optional error widget
                fadeInDuration: const Duration(
                  milliseconds: 500,
                ), // Adjust duration as needed
              ),
            ),
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black,
                    ],
                    stops: [
                      0.2,
                      1.0
                    ]),
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    movie.title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
