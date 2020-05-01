import 'package:flutter/material.dart';

class MovieBox extends StatelessWidget {
  MovieBox({this.url, this.title});
  final url, title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      child: Card(
        child: Wrap(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              child: Image.network(
                url,
                fit: BoxFit.fill,
                height: 160,
              ),
            ),
            Container(
              color: Colors.white,
              child: Center(
                child: Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
