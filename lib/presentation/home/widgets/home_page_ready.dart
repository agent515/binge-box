import 'package:binge_box/injectable/service_locator.dart';
import 'package:binge_box/presentation/home/cubit/home_cubit.dart';
import 'package:binge_box/presentation/search/search_page.dart';
import 'package:binge_box/presentation/widgets/movie_grid.dart';
import 'package:binge_box/utils/app_router.dart';
import 'package:binge_box/utils/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:binge_box/injectable/modules/connectivity_module.dart';
import '../../widgets/offline_banner.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageReady extends StatelessWidget {
  const HomePageReady({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    // Use the connectivity stream provided by the DI-registered
    // ConnectivityService so the same source is reused across the app.
    final connectivityStream = getIt<ConnectivityService>().onStatusChange;
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
                      getIt<AppRouter>().push(MovieDetailsRoute(movie: movie)),
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
      body: Column(
        children: [
          OfflineBanner(isOnlineStream: connectivityStream),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                MovieGrid(
                  key: ValueKey('TrendingMoviesGrid'),
                  fetchMovies:
                      context.read<HomeCubit>().fetchTrendingMoviesPage,
                  onMovieTap: (movie) =>
                      context.read<HomeCubit>().goToDetailsPage(movie),
                ),
                MovieGrid(
                  key: ValueKey('NowPlayingMoviesGrid'),
                  fetchMovies:
                      context.read<HomeCubit>().fetchNowPlayingMoviesPage,
                  onMovieTap: (movie) =>
                      context.read<HomeCubit>().goToDetailsPage(movie),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
