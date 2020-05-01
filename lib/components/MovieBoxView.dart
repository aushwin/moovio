import 'dart:ui';

import 'package:flutter/material.dart';

class MovieBoxView extends StatelessWidget {
  MovieBoxView({this.url, this.title});
  final url, title;

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
