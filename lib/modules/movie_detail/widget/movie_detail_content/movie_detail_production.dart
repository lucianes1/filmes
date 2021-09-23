import 'package:filmes/models/movie_detail_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MovieDetailProduction extends StatelessWidget {
  final MovieDetailModel? movie;
  const MovieDetailProduction({Key? key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RichText(
        text: TextSpan(
            text: 'Companhia(s) produtora(s): ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xff222222),
            ),
            children: [
              TextSpan(
                text: movie?.productionCompanies.join(', ') ?? 'desconhecido',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Color(0xff222222),
                ),
              )
            ]),
      ),
    );
  }
}
