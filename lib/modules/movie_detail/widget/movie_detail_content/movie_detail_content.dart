import 'package:filmes/models/movie_detail_model.dart';
import 'package:filmes/modules/movie_detail/widget/movie_detail_content/movie_detail_title.dart';
import 'package:flutter/material.dart';

class MovieDetailContent extends StatelessWidget {
  final MovieDetailModel? movie;
  const MovieDetailContent({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MovieDetailTitle(
          movie: movie,
        ),
      ],
    );
  }
}
