import 'package:filmes/modules/movies/movies_controller.dart';
import 'package:filmes/repositories/genres/genres_repository_impl.dart';
import 'package:filmes/repositories/genres/genres_respository.dart';
import 'package:filmes/services/genres/genre_service.dart';
import 'package:filmes/services/genres/genre_service_impl.dart';
import 'package:get/get.dart';

class MoviesBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GenresRespository>(
        () => GenresRepositoryImpl(restClient: Get.find()));

    Get.lazyPut<GenreService>(
        () => GenreServiceImpl(genresRespository: Get.find()));

    Get.lazyPut(() => MoviesController(genreService: Get.find()));
  }
}
