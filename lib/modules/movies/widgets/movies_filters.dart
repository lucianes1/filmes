import 'package:filmes/modules/movies/movies_controller.dart';
import 'package:filmes/modules/movies/widgets/filter_tags.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class MoviesFilters extends GetView<MoviesController> {
  const MoviesFilters({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Obx(() {
          return Row(
            children: controller.genres
                .map((g) => FilterTags(
                      model: g,
                      onPressed: () => controller.filterByGenre(g),
                      selected: controller.genreSelected.value?.id == g.id,
                    ))
                .toList(),
          );
        }),
      ),
    );
  }
}
