import 'dart:async';

import 'package:binge_box/domain/entities/movie/movie.dart';
import 'package:binge_box/presentation/widgets/movie_card.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class MovieGrid extends StatefulWidget {
  const MovieGrid({
    super.key,
    required this.onMovieTap,
    required this.fetchMovies,
    this.refreshStream,
  });

  final Future<List<Movie>> Function(int pageKey) fetchMovies;
  final void Function(Movie movie) onMovieTap;
  final Stream<void>? refreshStream;

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

  StreamSubscription<void>? _refreshSub;

  @override
  void dispose() {
    _refreshSub?.cancel();
    _pagingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    if (widget.refreshStream != null) {
      _refreshSub = widget.refreshStream!.listen((_) {
        _pagingController.refresh();
      });
    }
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
