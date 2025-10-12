import 'package:auto_route/auto_route.dart';
import 'package:binge_box/injectable/service_locator.dart';
import 'package:binge_box/presentation/home/cubit/home_cubit.dart';
import 'package:binge_box/presentation/home/cubit/home_state.dart';
import 'package:binge_box/presentation/widgets/movie_grid.dart';
import 'package:binge_box/utils/app_router.dart';
import 'package:binge_box/utils/app_router.gr.dart';
import 'package:binge_box/utils/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    SchedulerBinding.instance.addPostFrameCallback(
      (_) {
        getIt<AppSizes>().init(context);
      },
    );
    _tabController = TabController(length: 2, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeCubit>(),
      child: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) async {
          switch (state) {
            case HomeGoToDetailsPage(:final movie):
              // Navigate to details page
              await getIt<AppRouter>().push(
                MovieDetailsRoute(movie: movie),
              );
              if (context.mounted) {
                context.read<HomeCubit>().emitReady();
              }
              break;
            case HomeError(:final error):
              // Show error message
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Error: ${error.toString()}')),
              );
              break;
            default:
              break;
          }
        },
        builder: (context, state) {
          switch (state) {
            case HomeLoading():
              return Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            case HomeReady(:final trendingMovies, :final nowPlayingMovies):
              return Scaffold(
                appBar: AppBar(
                  title: Text('Binge Box'),
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
                      movies: nowPlayingMovies,
                      onMovieTap: (movie) =>
                          context.read<HomeCubit>().goToDetailsPage(movie),
                    ),
                    MovieGrid(
                      movies: trendingMovies,
                      onMovieTap: (movie) =>
                          context.read<HomeCubit>().goToDetailsPage(movie),
                    ),
                  ],
                ),
              );
            case HomeError(:final error):
              return Scaffold(
                body: Center(
                  child: Text('Home Error: ${error.toString()}'),
                ),
              );
            default:
              return Scaffold();
          }
        },
      ),
    );
  }
}
