import 'package:binge_box/domain/entities/movie/movie.dart';
import 'package:binge_box/presentation/widgets/movie_card.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class MovieGrid extends StatefulWidget {
  const MovieGrid({
    super.key,
    required this.onMovieTap,
    required this.fetchMovies,
  });

  final Future<List<Movie>> Function(int pageKey) fetchMovies;
  final void Function(Movie movie) onMovieTap;

  @override
  State<MovieGrid> createState() => _MovieGridState();
}

class _MovieGridState extends State<MovieGrid>
    with AutomaticKeepAliveClientMixin {
  late final PagingController<int, Movie> _pagingController =
      PagingController<int, Movie>(
    getNextPageKey: (state) =>
        state.lastPageIsEmpty ? null : state.nextIntPageKey,
    fetchPage: widget.fetchMovies,
  );

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return PagingListener(
      controller: _pagingController,
      builder: (context, state, fetchNextPage) => PagedGridView<int, Movie>(
        state: state,
        fetchNextPage: fetchNextPage,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          mainAxisExtent: 232,
        ),
        builderDelegate: PagedChildBuilderDelegate(
          itemBuilder: (context, movie, index) => MovieCard(
            movie: movie,
            onTap: () => widget.onMovieTap(movie),
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
