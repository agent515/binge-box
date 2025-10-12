import 'package:binge_box/domain/entities/movie/movie.dart';
import 'package:binge_box/injectable/service_locator.dart';
import 'package:binge_box/presentation/home/cubit/home_cubit.dart';
import 'package:binge_box/presentation/home/cubit/home_state.dart';
import 'package:binge_box/utils/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    SchedulerBinding.instance.addPostFrameCallback((_) {
      getIt<AppSizes>().init(context);
    });
    _tabController = TabController(length: 2, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<HomeCubit>(),
        child: BlocConsumer<HomeCubit, HomeState>(
          listener: (context, state) {
            if (state is HomeGoToDetailsPage) {
              // Navigate to details page
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
                      ),
                      MovieGrid(
                        movies: trendingMovies,
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
                return Container();
            }
          },
        ));
  }
}

class MovieGrid extends StatelessWidget {
  const MovieGrid({
    super.key,
    required this.movies,
  });

  final List<Movie> movies;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        mainAxisExtent: 232,
      ),
      itemBuilder: (context, index) {
        final movie = movies[index];
        return Card(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              AspectRatio(
                aspectRatio: 9 / 16,
                child: Image.network(
                  movie.posterPath ?? '',
                  fit: BoxFit.cover,
                  height: 232,
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
                      movie.title ?? 'No Title',
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
        );
      },
      itemCount: movies.length,
    );
  }
}
