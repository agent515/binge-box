import 'package:binge_box/data/dto/get_list/get_movie_list_dto.dart';

abstract class RetrofitApiDataSource {
  Future<GetMovieListDto> getTrendingMovies(int page);
  Future<GetMovieListDto> getNowPlayingMovies(int page);
  Future<GetMovieListDto> searchMovies(int page, String query);
}
