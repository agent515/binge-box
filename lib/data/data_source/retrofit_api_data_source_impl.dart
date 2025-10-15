import 'package:binge_box/data/dto/get_list/get_movie_list_dto.dart';
import 'package:binge_box/domain/data_source/retrofit_api_data_source.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'retrofit_api_data_source_impl.g.dart';

@RestApi()
abstract class RetrofitApiDataSourceImpl implements RetrofitApiDataSource {
  factory RetrofitApiDataSourceImpl(Dio dio, {String baseUrl}) =
      _RetrofitApiDataSourceImpl;

  @override
  @GET('/movie/now_playing')
  Future<GetMovieListDto> getNowPlayingMovies(@Query('page') int page);

  @override
  @GET('/trending/movie/week')
  Future<GetMovieListDto> getTrendingMovies(@Query('page') int page);

  @override
  @GET('/search/movie')
  Future<GetMovieListDto> searchMovies(
    @Query('page') int page,
    @Query('query') String query,
  );
}
