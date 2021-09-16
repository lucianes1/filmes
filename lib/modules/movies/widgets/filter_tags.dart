import 'package:filmes/application/ui/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class FilterTags extends StatelessWidget {
  const FilterTags({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      constraints: BoxConstraints(minWidth: 100, minHeight: 30),
      decoration: BoxDecoration(
        color: context.themeRed,
        borderRadius: BorderRadius.circular(35),
      ),
      child: Center(
        child: Text(
          'Infantil',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
