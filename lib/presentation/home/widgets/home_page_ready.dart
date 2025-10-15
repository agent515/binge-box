import 'package:binge_box/presentation/home/cubit/home_cubit.dart';
import 'package:binge_box/presentation/search/search_page.dart';
import 'package:binge_box/presentation/widgets/movie_grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageReady extends StatelessWidget {
  const HomePageReady({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Binge Box'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Navigate to search page
              showSearch(
                context: context,
                delegate: SearchMoviesDelegate(
                  fetchMovies: context.read<HomeCubit>().searchMovies,
                  onMovieTap: (movie) =>
                      context.read<HomeCubit>().goToDetailsPage(movie),
                ),
              );
            },
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'Now Playing'),
            Tab(text: 'Trending'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          MovieGrid(
            key: ValueKey('TrendingMoviesGrid'),
            fetchMovies: context.read<HomeCubit>().fetchTrendingMoviesPage,
            onMovieTap: (movie) =>
                context.read<HomeCubit>().goToDetailsPage(movie),
          ),
          MovieGrid(
            key: ValueKey('NowPlayingMoviesGrid'),
            fetchMovies: context.read<HomeCubit>().fetchNowPlayingMoviesPage,
            onMovieTap: (movie) =>
                context.read<HomeCubit>().goToDetailsPage(movie),
          ),
        ],
      ),
    );
  }
}
