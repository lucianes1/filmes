import 'package:filmes/application/modules/module.dart';
import 'package:filmes/modules/movie_detail/movie_detail_bindings.dart';
import 'package:filmes/modules/movies/movies_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class MovieDetailModule extends Module {
  @override
  List<GetPage> routers = [
    GetPage(
        name: 'movie/detail',
        page: () => MoviesPage(),
        binding: MovieDetailBindings())
  ];
}
