import 'package:flutter/material.dart';
import 'package:binge_box/presentation/widgets/movie_grid.dart';
import 'package:binge_box/domain/entities/movie/movie.dart';
import 'package:binge_box/utils/debouncer.dart';

class SearchMoviesDelegate extends SearchDelegate<Movie?> {
  final Debouncer _debouncer =
      Debouncer(delay: const Duration(milliseconds: 500));
  String? _lastQuery;
  Future<void>? _debounceFuture;
  final Future<List<Movie>> Function(int page, String query) fetchMovies;
  final void Function(Movie movie) onMovieTap;

  SearchMoviesDelegate({
    required this.fetchMovies,
    required this.onMovieTap,
  });

  @override
  List<Widget>? buildActions(BuildContext context) => [
        if (query.isNotEmpty)
          IconButton(
            icon: const Icon(Icons.clear),
            onPressed: () => query = '',
          ),
      ];

  @override
  Widget? buildLeading(BuildContext context) => IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () => close(context, null),
      );

  @override
  Widget buildResults(BuildContext context) => _buildMovieResults();

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isEmpty) {
      // Ensure we don't show previous results when query is cleared.
      _lastQuery = '';
      _debounceFuture = null;
      return const Center(child: Text('Search for a movie'));
    }
    // If the query changed, create a new delayed future. We use a
    // FutureBuilder below to wait for this future to complete before
    // showing the results. This avoids calling `showResults` and keeps
    // the search field focused.
    if (_lastQuery != query) {
      _lastQuery = query;
      _debounceFuture = Future.delayed(_debouncer.delay);
    }

    return FutureBuilder(
      future: _debounceFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return _buildMovieResults();
        }
        return const Center(child: CircularProgressIndicator.adaptive());
      },
    );
  }

  Widget _buildMovieResults() {
    return MovieGrid(
      key: ValueKey('search_$query'),
      onMovieTap: onMovieTap,
      fetchMovies: (pageKey) => fetchMovies(pageKey, query),
    );
  }

  @override
  void close(BuildContext context, result) {
    // Clean up
    _debouncer.dispose();
    super.close(context, result);
  }
}
