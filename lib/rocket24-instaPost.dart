import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class instaPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return rocket24_Post;
  }
}

final Widget rocket24_Post = new Column(
  children: <Widget>[
    new Padding(
      padding: EdgeInsets.fromLTRB(20, 16, 8, 16),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Row(
            children: <Widget>[
              new Container(
                height: 40,
                width: 40,
                decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  image: new DecorationImage(
                    image: new NetworkImage(
                        'https://avatars0.githubusercontent.com/u/67832722?s=460&u=d2fa4c331417a3ac66bd628fb6dfcc75aa5ea002&v=4'),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8),
                child: new Text(
                  "Sediqe Zangane",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          new IconButton(icon: new Icon(Icons.more_vert), onPressed: null)
        ],
      ),
    ),
    new Expanded(
      child: Image.asset("assets/images/post.jpg", fit: BoxFit.cover),
    ),
  ],
);
