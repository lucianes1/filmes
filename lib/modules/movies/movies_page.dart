import 'package:filmes/modules/movies/movies_controller.dart';
import 'package:filmes/modules/movies/widgets/movies_filters.dart';
import 'package:filmes/modules/movies/widgets/movies_group.dart';
import 'package:filmes/modules/movies/widgets/movies_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class MoviesPage extends GetView<MoviesController> {
  const MoviesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        MoviesHeader(),
        MoviesFilters(),
        MoviesGroup(
          title: 'Mais populares',
          movies: controller.popularMovies,
        ),
        MoviesGroup(
          title: 'Top filmes',
          movies: controller.topRatedMovies,
        ),
      ],
    );
  }
}
