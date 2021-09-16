import 'package:filmes/models/genre_model.dart';

abstract class GenresRespository {
  Future<List<GenreModel>> getGenres();
}
