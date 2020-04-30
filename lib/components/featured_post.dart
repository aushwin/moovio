import 'package:flutter/material.dart';

class FeaturedPost extends StatelessWidget {
  const FeaturedPost({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 6,
      child: Stack(
        overflow: Overflow.visible,
        fit: StackFit.loose,
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: AssetImage('images/JHONWICK.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(120),
              ),
            ),
            child: Column(
              children: [
                Spacer(
                  flex: 4,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Watch Before Anyone Else',
                      style: TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontSize: 15),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'The Boogy Man',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Spacer(
                  flex: 1,
                ),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.39,
            left: MediaQuery.of(context).size.width * 0.3,
            child: FlatButton(
              splashColor: Colors.redAccent,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Icon(
                  Icons.add,
                  size: 30,
                  color: Colors.red,
                ),
              ),
              shape: CircleBorder(),
              onPressed: () {},
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.39,
            left: MediaQuery.of(context).size.width * 0.5,
            child: ButtonTheme(
              minWidth: 200,
              height: 50,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(80),
                topLeft: Radius.circular(80),
              )),
              child: FlatButton(
                color: Colors.red,
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Watch Now',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    Icon(
                      Icons.arrow_right,
                      color: Colors.white,
                      size: 30,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
