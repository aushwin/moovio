import 'package:flutter/material.dart';
import 'package:moovio/brains/fetchTopBrain.dart';
import 'package:moovio/screens/loading_screen.dart';
import 'package:moovio/screens/movie_details.dart';

class MovieBox extends StatefulWidget {
  MovieBox({this.url, this.title, this.id});
  final url, title, id;

  @override
  _MovieBoxState createState() => _MovieBoxState();
}

class _MovieBoxState extends State<MovieBox> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        fetchTopBrain.getLinkWithId(widget.id);
        print(FetchTopBrain.s);
        Future.delayed(Duration(seconds: 2), () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) =>
                  MovieDetails(link: FetchTopBrain.s),
            ),
          );
        });
      },
      child: Container(
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
                  widget.url,
                  fit: BoxFit.fill,
                  height: 160,
                ),
              ),
              Container(
                color: Colors.white,
                child: Center(
                  child: Text(
                    widget.title,
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
      ),
    );
  }
}
