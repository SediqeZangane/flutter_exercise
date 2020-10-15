import 'package:flutter/material.dart';
import 'package:flutter_exercise/HomePage21.dart';
import 'package:flutter_exercise/HomePage21Way2.dart';

class MyApp20 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'اینستاگرام',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
          fontFamily: 'Vazir',
          primaryColor: Colors.black,
          primaryIconTheme: IconThemeData(color: Colors.black),
          primaryTextTheme: TextTheme(title: TextStyle(color: Colors.black))),
      home: new Directionality(
          textDirection: TextDirection.rtl, child: MyHomePages20()),
    );
  }
}
