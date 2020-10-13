import 'package:flutter/material.dart';
import 'package:flutter_exercise/rocket21Pages/home_Page.dart';

class MyHomePage20 extends StatelessWidget {
  final appBar = new AppBar(
    backgroundColor: new Color(0xfff8f8f8),
    elevation: 1.0,
    centerTitle: true,
    leading: new Icon(Icons.camera_alt),
    title: SizedBox(
      height: 40.0,
      child: new Image.asset("assets/images/insta_logo.png"),
    ),
    actions: <Widget>[
      Padding(
          padding: EdgeInsets.only(right: 12.0), child: new Icon(Icons.send)),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: appBar,
      body: new home_Page(),
      bottomNavigationBar: new Container(
        height: 50,
        color: Colors.white,
        child: new BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new IconButton(
                  icon: new Icon(Icons.home, color: Colors.black),
                  onPressed: null),
              new IconButton(
                  icon: new Icon(Icons.search, color: Colors.black),
                  onPressed: null),
              new IconButton(
                  icon: new Icon(Icons.add_box, color: Colors.black),
                  onPressed: null),
              new IconButton(
                  icon: new Icon(Icons.favorite, color: Colors.black),
                  onPressed: null),
              new IconButton(
                  icon: new Icon(Icons.account_box, color: Colors.black),
                  onPressed: null)
            ],
          ),
        ),
      ),
    );
  }
}
