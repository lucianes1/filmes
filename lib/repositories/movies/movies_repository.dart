import 'package:filmes/models/movie_detail_model.dart';
import 'package:filmes/models/movie_model.dart';

abstract class MoviesRepository {
  Future<List<MovieModel>> getPopularMovies();
  Future<List<MovieModel>> geTopRatedMovies();
  Future<MovieDetailModel?> getDetail(int id);
}
