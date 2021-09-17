import 'package:filmes/application/ui/widgets/movie_card.dart';
import 'package:flutter/material.dart';

class MoviesGroup extends StatelessWidget {
  final String title;

  const MoviesGroup({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Text(
            title,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 233,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return MovieCard();
              },
            ),
          )
        ],
      ),
    );
  }
}
