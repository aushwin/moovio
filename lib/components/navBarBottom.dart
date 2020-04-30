import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:moovio/screens/main_screen.dart';

class ButtomNavBar extends StatefulWidget {
  const ButtomNavBar({
    Key key,
  }) : super(key: key);

  @override
  _ButtomNavBarState createState() => _ButtomNavBarState();
}

class _ButtomNavBarState extends State<ButtomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      items: [
        BottomNavigationBarItem(
          backgroundColor: Colors.red,
          icon: Icon(AntDesign.home),
          title: Text(
            'Home',
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.blue,
          icon: Icon(Octicons.bookmark),
          title: Text(
            'Saved',
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.green,
          icon: Icon(
            AntDesign.search1,
          ),
          title: Text(
            'Search',
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.redAccent,
          icon: Icon(
            FlutterIcons.account_circle_mdi,
          ),
          title: Text(
            'Account',
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ),
      ],
      onTap: (index) {
        setState(() {
          currentIndex = index;
        });
      },
    );
  }
}
