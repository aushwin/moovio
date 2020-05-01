import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:moovio/brains/fetchTopBrain.dart';
import 'package:moovio/screens/main_screen.dart';

FetchTopBrain fetchTopBrain = new FetchTopBrain();

class LoadingScreen extends StatefulWidget {
  LoadingScreen({Key key}) : super(key: key);

  @override
  _LoadinScreenState createState() => _LoadinScreenState();
}

class _LoadinScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    await fetchTopBrain.fetchPopularMovie();
    Future.delayed(
        Duration(
          seconds: 2,
        ), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) => MainScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.red,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Moovio",
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            SpinKitFoldingCube(
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
