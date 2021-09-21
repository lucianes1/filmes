import 'package:filmes/application/ui/filme_app_icons_icons.dart';
import 'package:filmes/models/movie_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class MovieCard extends StatelessWidget {
  final dateFormat = DateFormat('dd/MM/y');
  final MovieModel movie;

  MovieCard({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed('movie/detail', arguments: movie.id);
      },
      child: Container(
        padding: EdgeInsets.only(right: 10),
        width: 148,
        height: 280,
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Material(
                  elevation: 2,
                  borderRadius: BorderRadius.circular(20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    clipBehavior: Clip.antiAlias,
                    child: Image.network(
                      movie.posterPath,
                      width: 148,
                      height: 184,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  movie.title,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                Text(
                  dateFormat.format(DateTime.parse(movie.releaseDate)),
                  style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey),
                ),
              ],
            ),
            Positioned(
              bottom: 45,
              right: -10,
              child: Material(
                elevation: 2,
                clipBehavior: Clip.antiAlias,
                shape: CircleBorder(),
                child: SizedBox(
                  height: 30,
                  child: IconButton(
                    iconSize: 13,
                    onPressed: () {},
                    icon: Icon(FilmeAppIcons.heart),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
