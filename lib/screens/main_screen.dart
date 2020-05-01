import 'package:flutter/material.dart';
import 'package:moovio/brains/fetchTopBrain.dart';
import 'package:moovio/components/MovieBox.dart';
import 'package:moovio/components/featured_post.dart';
import 'package:moovio/components/navBarBottom.dart';
import 'package:moovio/screens/loading_screen.dart';

int currentIndex = 0;

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ButtomNavBar(),
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
                        MovieBox(
                          url: 'images/WWZ.jpg',
                          title: fetchTopBrain.getTitle(0),
                        ),
                        MovieBox(
                          url: 'images/FC.jpg',
                          title: 'Fight Club',
                        ),
                        MovieBox(
                          url: 'images/AOJD.jpg',
                          title: 'Autopsy Of Jain Doe',
                        ),
                        MovieBox(
                          url: 'images/TDF.jpg',
                          title: 'Terminator Dark Fate',
                        ),
                        MovieBox(
                          url: 'images/ML.jpg',
                          title: 'Movie Light',
                        ),
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
