import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp20 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'اینستاگرام',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
          primaryIconTheme: IconThemeData(color: Colors.black),
          primaryTextTheme: TextTheme(title: TextStyle(color: Colors.black))),
      home: MyHomePage20(),
    );
  }
}

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
