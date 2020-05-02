import 'package:flutter/material.dart';
import 'package:moovio/brains/fetchTopBrain.dart';
import 'package:moovio/components/MovieBox.dart';
import 'package:moovio/components/featured_post.dart';
import 'package:moovio/components/navBarBottom.dart';
import 'package:moovio/constants.dart';
import 'package:moovio/screens/loading_screen.dart';
import 'package:moovio/screens/view_screen.dart';

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
          SectionOne(),
        ],
      ),
    );
  }
}

class SectionOne extends StatelessWidget {
  const SectionOne({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => ViewMoreScreen())),
                  child: Text(
                    'View More',
                    style: TextStyle(
                      color: Color(0xffADADAD),
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),
            Container(
              height: 200,
              margin: EdgeInsets.all(20),
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: [
                  MovieBox(
                    url: kIMAGEDATABASEURL + fetchTopBrain.getImageUrl(0),
                    title: fetchTopBrain.getTitle(0),
                    id: fetchTopBrain.getId(0),
                    desc: fetchTopBrain.getdesc(0),
                  ),
                  MovieBox(
                    url: kIMAGEDATABASEURL + fetchTopBrain.getImageUrl(1),
                    title: fetchTopBrain.getTitle(1),
                    id: fetchTopBrain.getId(1),
                    desc: fetchTopBrain.getdesc(1),
                  ),
                  MovieBox(
                    url: kIMAGEDATABASEURL + fetchTopBrain.getImageUrl(2),
                    title: fetchTopBrain.getTitle(2),
                    id: fetchTopBrain.getId(2),
                    desc: fetchTopBrain.getdesc(2),
                  ),
                  MovieBox(
                    url: kIMAGEDATABASEURL + fetchTopBrain.getImageUrl(3),
                    title: fetchTopBrain.getTitle(3),
                    id: fetchTopBrain.getId(3),
                    desc: fetchTopBrain.getdesc(3),
                  ),
                  MovieBox(
                    url: kIMAGEDATABASEURL + fetchTopBrain.getImageUrl(4),
                    title: fetchTopBrain.getTitle(4),
                    id: fetchTopBrain.getId(4),
                    desc: fetchTopBrain.getdesc(4),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
