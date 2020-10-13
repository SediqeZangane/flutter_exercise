import 'package:flutter/material.dart';
import 'package:flutter_exercise/HomePage21.dart';

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


