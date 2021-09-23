import 'package:filmes/models/movie_detail_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:filmes/application/ui/theme_extensions.dart';

class MovieDetailTitle extends StatelessWidget {
  final MovieDetailModel? movie;

  const MovieDetailTitle({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          movie?.title ?? '',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 10,
        ),
        RatingStars(
          value: (movie?.stars ?? 1) / 2,
          starSize: 14,
          starColor: context.themeOrange,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          movie?.genres.map((e) => e.name).join(', ') ?? '',
          style: TextStyle(
            color: context.themeGrey,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
