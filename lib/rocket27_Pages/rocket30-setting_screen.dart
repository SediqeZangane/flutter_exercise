import 'package:flutter/material.dart';
import 'package:flutter_exercise/rocket27_Pages/Camera_Screen.dart';

class settingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: new AppBar(
          title: new Text(
            " تنظیمات",
            style: TextStyle(fontSize: 20),
          ),
        ),
        body: new Center(
            child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Text(
              " تنظیمات",
              style: TextStyle(fontSize: 20),
            ),
            new RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: new Text("بازگشت "),
            ),
          ],
        )),
      ),
    );
  }
}
