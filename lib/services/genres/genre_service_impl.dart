import 'package:filmes/models/genre_model.dart';
import 'package:filmes/repositories/genres/genres_respository.dart';
import 'package:filmes/services/genres/genre_service.dart';

class GenreServiceImpl implements GenreService {
  final GenresRespository _genresRespository;

  GenreServiceImpl({
    required GenresRespository genresRespository,
  }) : _genresRespository = genresRespository;

  @override
  Future<List<GenreModel>> getGenres() => _genresRespository.getGenres();
}
