import 'package:filmes/models/movie_detail_model.dart';
import 'package:flutter/cupertino.dart';

class MovieDetailCredits extends StatelessWidget {
  final MovieDetailModel? movie;

  const MovieDetailCredits({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: 50),
      child: Text(
        movie?.overview ?? '',
        style: TextStyle(fontSize: 14, height: 1.3),
      ),
    );
  }
}
