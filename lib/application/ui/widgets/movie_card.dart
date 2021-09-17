import 'package:filmes/application/ui/filme_app_icons_icons.dart';
import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                    'https://upload.wikimedia.org/wikipedia/pt/thumb/6/63/Joker_%282019%29.jpg/250px-Joker_%282019%29.jpg',
                    width: 148,
                    height: 184,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Teste',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              Text(
                'Teste',
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
    );
  }
}
