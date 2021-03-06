import 'package:filmes/modules/movies/movies_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MoviesHeader extends GetView<MoviesController> {
  const MoviesHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 196,
      width: Get.width,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SizedBox(
            width: Get.width,
            child: Image.asset(
              'assets/images/header.png',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(16, 0, 16, 30),
            child: TextField(
              onChanged: (value) => controller.filteByName(value),
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(23)),
                  fillColor: Colors.white,
                  filled: true,
                  labelText: 'Procurar filme',
                  labelStyle: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                  prefixIcon: Icon(Icons.search),
                  contentPadding: EdgeInsets.zero,
                  floatingLabelBehavior: FloatingLabelBehavior.never),
            ),
          ),
        ],
      ),
    );
  }
}
