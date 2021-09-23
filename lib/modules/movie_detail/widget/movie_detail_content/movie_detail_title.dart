import 'package:filmes/models/movie_detail_model.dart';
import 'package:flutter/material.dart';

class MovieDetailTitle extends StatelessWidget {
  final MovieDetailModel? movie;

  const MovieDetailTitle({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          movie?.title ?? '',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
