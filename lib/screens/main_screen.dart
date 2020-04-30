import 'package:flutter/material.dart';
import 'package:moovio/components/MovieBox.dart';
import 'package:moovio/components/featured_post.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          FeaturedPost(),
          Expanded(
            flex: 7,
            child: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 70,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.ideographic,
                    children: [
                      Spacer(
                        flex: 3,
                      ),
                      Text(
                        'Watch Now',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(
                        flex: 2,
                      ),
                      Text(
                        'View More',
                        style: TextStyle(
                          color: Color(0xffADADAD),
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                  Container(
                    height: 210,
                    margin: EdgeInsets.all(20),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: [
                        MovieBox(),
                        MovieBox(),
                        MovieBox(),
                        MovieBox(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
