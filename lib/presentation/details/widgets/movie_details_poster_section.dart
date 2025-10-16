import 'package:binge_box/domain/entities/movie/movie.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:binge_box/presentation/details/cubit/movie_details_cubit.dart';
import 'package:binge_box/injectable/service_locator.dart';
import 'package:binge_box/utils/app_sizes.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MovieDetailsPosterSection extends StatelessWidget {
  const MovieDetailsPosterSection({
    super.key,
    required this.movie,
    required this.bookmarked,
  });

  final Movie movie;
  final bool bookmarked;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.7,
      child: Stack(
        children: [
          CachedNetworkImage(
            imageUrl: movie.posterPath ?? '',
            width: double.infinity,
            fit: BoxFit.cover,
            placeholder: (context, url) =>
                Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BackButton(color: Colors.white),
                      GestureDetector(
                        onTap: () async =>
                            context.read<MovieDetailsCubit>().toggleBookmark(),
                        child: Icon(
                          bookmarked ? Icons.bookmark : Icons.bookmark_border,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.transparent,
                        Colors.white,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          movie.title,
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        getIt<AppSizes>().vPadding4,
                        Text(
                          movie.releaseDate != null
                              ? 'Release Date: ${movie.releaseDate}'
                              : 'Release Date: N/A',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
