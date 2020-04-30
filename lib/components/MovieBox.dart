import 'package:flutter/material.dart';

class MovieBox extends StatelessWidget {
  const MovieBox({
    Key key,
  }) : super(key: key);

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
              child: Image.asset(
                'images/WWZ.jpg',
                fit: BoxFit.fill,
              ),
            ),
            Container(
              color: Colors.white,
              child: Center(
                child: Text(
                  'World War Z',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
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
