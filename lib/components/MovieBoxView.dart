import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:moovio/brains/fetchTopBrain.dart';
import 'package:moovio/screens/loading_screen.dart';
import 'package:moovio/screens/movie_details.dart';

class MovieBoxView extends StatelessWidget {
  MovieBoxView({this.url, this.title, this.id, this.desc});
  final url, title, id, desc;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        fetchTopBrain.getLinkWithId(id);
        print(FetchTopBrain.s);
        Future.delayed(Duration(milliseconds: 500), () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) =>
                  MovieDetails(link: FetchTopBrain.s, desc: desc, title: title),
            ),
          );
        });
      },
      child: Container(
        child: Stack(
          alignment: Alignment.center,
          fit: StackFit.loose,
          children: [
            Image.network(
              url,
              fit: BoxFit.fill,
            ),
          ],
        ),
      ),
    );
  }
}
