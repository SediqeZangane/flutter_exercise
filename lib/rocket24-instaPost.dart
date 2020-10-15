import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class instaPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return rocket24_Post;
  }
}

final Widget rocket24_Post = new Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: <Widget>[
    new Padding(
      padding: EdgeInsets.fromLTRB(20, 16, 8, 8),
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
              ),
            ],
          ),
          new IconButton(icon: new Icon(Icons.more_vert), onPressed: null)
        ],
      ),
    ),
    new Row(
      children: <Widget>[
        new Expanded(
          child: Image.asset("assets/images/insta_logo.png", fit: BoxFit.cover),
        ),
      ],
    ),
    new Padding(
      padding: EdgeInsets.all(8),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Row(
            children: <Widget>[
              new IconButton(
                  icon: new Icon(
                    FontAwesomeIcons.heart,
                    color: Colors.black,
                  ),
                  onPressed: null),
              new IconButton(
                  icon: new Icon(
                    FontAwesomeIcons.comment,
                    color: Colors.black,
                  ),
                  onPressed: null),
              new IconButton(
                  icon: new Icon(
                    FontAwesomeIcons.paperPlane,
                    color: Colors.black,
                  ),
                  onPressed: null),
            ],
          ),
          new IconButton(
              icon: new Icon(
                FontAwesomeIcons.bookmark,
                color: Colors.black,
              ),
              onPressed: null),
        ],
      ),
    ),
    new Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: new Text(
        "مهدی و صدیقه و 50000 نفر دیگر این پست را لایک کردند",
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
    ),
    new Padding(
      padding: EdgeInsets.fromLTRB(20, 8, 20, 0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.start,
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
            margin: EdgeInsets.only(right: 16),
          ),
          new Expanded(
            child: new TextField(
              decoration: new InputDecoration(
                  border: InputBorder.none,
                  hintText: 'اضافه کردن یک نظر ...',
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w200,
                  )),
            ),
          ),
        ],
      ),
    ),
    new Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: new Text(
        "1 روز قبل",
        style: TextStyle(color: Colors.grey),
      ),
    )
  ],
);
