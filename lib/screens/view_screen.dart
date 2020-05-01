import 'package:flutter/material.dart';
import 'package:moovio/components/MovieBox.dart';
import 'package:moovio/components/MovieBoxView.dart';
import 'package:moovio/components/navBarBottom.dart';

import '../constants.dart';
import 'loading_screen.dart';

int _itemCount;

class ViewMoreScreen extends StatefulWidget {
  ViewMoreScreen({Key key}) : super(key: key);

  @override
  _ViewMoreScreenState createState() => _ViewMoreScreenState();
}

class _ViewMoreScreenState extends State<ViewMoreScreen> {
  ScrollController _scrollController = new ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _itemCount = 6;
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        setState(() {
          if (_itemCount <= 64) {
            _itemCount = _itemCount + 10;
          }
        });
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ButtomNavBar(),
      body: SafeArea(
        child: GridView.builder(
          controller: _scrollController,
          itemCount: _itemCount,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 10 / 15,
          ),
          itemBuilder: (BuildContext context, int index) {
            return MovieBoxView(
              url: kIMAGEDATABASEURL + fetchTopBrain.getImageUrl(index),
              title: fetchTopBrain.getTitle(index),
            );
          },
        ),
      ),
    );
  }
}
