// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:binge_box/data/local/drift_database.dart' as _i356;
import 'package:binge_box/data/repositories/bookmark_repo_impl.dart' as _i940;
import 'package:binge_box/data/repositories/movie_repo_impl.dart' as _i801;
import 'package:binge_box/domain/data_source/retrofit_api_data_source.dart'
    as _i761;
import 'package:binge_box/domain/entities/movie/movie.dart' as _i406;
import 'package:binge_box/domain/repositories/bookmark_repo.dart' as _i687;
import 'package:binge_box/domain/repositories/movie_repo.dart' as _i600;
import 'package:binge_box/domain/use_cases/check_bookmark_use_case.dart' as _i3;
import 'package:binge_box/domain/use_cases/get_bookmarked_movies_use_case.dart'
    as _i370;
import 'package:binge_box/domain/use_cases/get_now_playing_movies_use_case.dart'
    as _i845;
import 'package:binge_box/domain/use_cases/get_trending_movies_use_case.dart'
    as _i255;
import 'package:binge_box/domain/use_cases/search_movies_use_case.dart'
    as _i717;
import 'package:binge_box/domain/use_cases/toggle_bookmark_use_case.dart'
    as _i860;
import 'package:binge_box/injectable/modules/api_module.dart' as _i1054;
import 'package:binge_box/injectable/modules/app_router_module.dart' as _i29;
import 'package:binge_box/injectable/modules/app_sizes_module.dart' as _i407;
import 'package:binge_box/injectable/modules/connectivity_module.dart' as _i425;
import 'package:binge_box/injectable/modules/local_db_module.dart' as _i195;
import 'package:binge_box/presentation/details/cubit/movie_details_cubit.dart'
    as _i523;
import 'package:binge_box/presentation/home/cubit/home_cubit.dart' as _i337;
import 'package:binge_box/utils/app_router.dart' as _i795;
import 'package:binge_box/utils/app_sizes.dart' as _i643;
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final apiModule = _$ApiModule();
    final appRouterModule = _$AppRouterModule();
    final appSizesModule = _$AppSizesModule();
    final connectivityModule = _$ConnectivityModule();
    final localDbModule = _$LocalDbModule();
    gh.singleton<_i361.Dio>(() => apiModule.client);
    gh.lazySingleton<_i795.AppRouter>(() => appRouterModule.appRouter);
    gh.lazySingleton<_i643.AppSizes>(() => appSizesModule.instance);
    gh.lazySingleton<_i425.ConnectivityService>(
        () => connectivityModule.connectivityService());
    gh.lazySingleton<_i356.AppDatabase>(
        () => localDbModule.provideAppDatabase());
    gh.factory<_i761.RetrofitApiDataSource>(
        () => apiModule.apiDataSource(gh<_i361.Dio>()));
    gh.singleton<_i687.BookmarkRepo>(
        () => _i940.BookmarkRepoImpl(db: gh<_i356.AppDatabase>()));
    gh.singleton<_i600.MovieRepo>(() => _i801.MovieRepoImpl(
          retrofitApiDataSource: gh<_i761.RetrofitApiDataSource>(),
          db: gh<_i356.AppDatabase>(),
        ));
    gh.factory<_i3.CheckBookmarkUseCase>(
        () => _i3.CheckBookmarkUseCase(gh<_i687.BookmarkRepo>()));
    gh.factory<_i860.ToggleBookmarkUseCase>(
        () => _i860.ToggleBookmarkUseCase(gh<_i687.BookmarkRepo>()));
    gh.factory<_i717.SearchMoviesUseCase>(
        () => _i717.SearchMoviesUseCase(gh<_i600.MovieRepo>()));
    gh.factory<_i845.GetNowPlayingMoviesUseCase>(
        () => _i845.GetNowPlayingMoviesUseCase(gh<_i600.MovieRepo>()));
    gh.factory<_i255.GetTrendingMoviesUseCase>(
        () => _i255.GetTrendingMoviesUseCase(gh<_i600.MovieRepo>()));
    gh.factory<_i370.GetBookmarkedMoviesUseCase>(
        () => _i370.GetBookmarkedMoviesUseCase(gh<_i600.MovieRepo>()));
    gh.factory<_i337.HomeCubit>(() => _i337.HomeCubit(
          gh<_i255.GetTrendingMoviesUseCase>(),
          gh<_i845.GetNowPlayingMoviesUseCase>(),
          gh<_i717.SearchMoviesUseCase>(),
          gh<_i370.GetBookmarkedMoviesUseCase>(),
        ));
    gh.factoryParam<_i523.MovieDetailsCubit, _i406.Movie, dynamic>((
      movie,
      _,
    ) =>
        _i523.MovieDetailsCubit(
          gh<_i3.CheckBookmarkUseCase>(),
          gh<_i860.ToggleBookmarkUseCase>(),
          movie,
        ));
    return this;
  }
}

class _$ApiModule extends _i1054.ApiModule {}

class _$AppRouterModule extends _i29.AppRouterModule {}

class _$AppSizesModule extends _i407.AppSizesModule {}

class _$ConnectivityModule extends _i425.ConnectivityModule {}

class _$LocalDbModule extends _i195.LocalDbModule {}
