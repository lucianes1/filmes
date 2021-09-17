import 'package:filmes/application/ui/theme_extensions.dart';
import 'package:filmes/models/genre_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class FilterTags extends StatelessWidget {
  final GenreModel model;
  final bool selected;
  final VoidCallback onPressed;
  const FilterTags(
      {Key? key,
      required this.model,
      this.selected = false,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(5),
        constraints: BoxConstraints(minWidth: 100, minHeight: 30),
        decoration: BoxDecoration(
          color: selected ? context.themeRed : Colors.black,
          borderRadius: BorderRadius.circular(35),
        ),
        child: Center(
          child: Text(
            model.name,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}
