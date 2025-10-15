import 'package:binge_box/domain/entities/movie/movie.dart';
import 'package:binge_box/injectable/service_locator.dart';
import 'package:binge_box/utils/app_sizes.dart';
import 'package:flutter/material.dart';

class MovieDetailsOtherInfoSection extends StatelessWidget {
  const MovieDetailsOtherInfoSection({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Overview',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          getIt<AppSizes>().vPadding4,
          Text(
            movie.overview ?? 'No overview available.',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
