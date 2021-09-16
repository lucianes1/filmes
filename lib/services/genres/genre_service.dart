import 'package:filmes/models/genre_model.dart';

abstract class GenreService {
  Future<List<GenreModel>> getGenres();
}
