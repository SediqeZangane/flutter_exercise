import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_exercise/HomePage21.dart';
import 'package:flutter_exercise/HomePage21Way2.dart';

class ListStories extends StatelessWidget {
  final topText = new Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      new Text(
        "stories",
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      Row(
        children: <Widget>[
          new Text(
            "Watch all",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          new Icon(Icons.play_arrow),
        ],
      ),
    ],
  );

  //chon stories final hast faqat ba constructor mishe meqdar dehi kard mavarede sho pas imageUrl biestefade mimune
  // var imageUrl ='https://avatars0.githubusercontent.com/u/67832722?s=460&u=d2fa4c331417a3ac66bd628fb6dfcc75aa5ea002&v=4';
  final stories = new Expanded(
    child: Padding(
      padding: EdgeInsets.only(top: 8),
      child: new ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Stack(
            children: <Widget>[
              new Container(
                width: 40,
                height: 40,
                decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        'https://avatars0.githubusercontent.com/u/67832722?s=460&u=d2fa4c331417a3ac66bd628fb6dfcc75aa5ea002&v=8'),
                  ),
                ),
                margin: EdgeInsets.symmetric(horizontal: 4),
              ),
              index == 0
                  ? new Positioned(
                      right: 2,
                      bottom: 0,
                      child: new CircleAvatar(
                        backgroundColor: Colors.blueAccent,
                        radius: 7.0,
                        child: new Icon(
                          Icons.add,
                          size: 14,
                          color: Colors.white,
                        ),
                      ),
                    )
                  : new Container(),
            ],
          );
        },
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      child: new Column(
        children: <Widget>[
          topText,
          stories,
        ],
      ),
    );
  }
}
