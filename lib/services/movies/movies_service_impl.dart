import 'package:filmes/models/movie_detail_model.dart';
import 'package:filmes/models/movie_model.dart';
import 'package:filmes/repositories/movies/movies_repository.dart';
import 'package:filmes/services/movies/movies_service.dart';

class MoviesServiceImpl implements MoviesService {
  final MoviesRepository _moviesRepository;

  MoviesServiceImpl({required MoviesRepository moviesRepository})
      : _moviesRepository = moviesRepository;

  @override
  Future<List<MovieModel>> geTopRatedMovies() =>
      _moviesRepository.geTopRatedMovies();

  @override
  Future<List<MovieModel>> getPopularMovies() =>
      _moviesRepository.getPopularMovies();

  @override
  Future<MovieDetailModel?> getDetail(int id) =>
      _moviesRepository.getDetail(id);
}
