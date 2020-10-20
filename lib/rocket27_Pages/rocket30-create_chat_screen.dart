import 'package:flutter/material.dart';
import 'package:flutter_exercise/rocket27_Pages/Camera_Screen.dart';

class createChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: new AppBar(
          title: new Text(
            "ایجاد چت",
            style: TextStyle(fontSize: 20),
          ),
        ),
        body: new Center(
            child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Text(
              "ایجاد چت",
              style: TextStyle(fontSize: 20),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new RaisedButton(
                  onPressed: () {
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (context) {
                      return CameraScreen();
                    }));
                  },
                  child: new Text("صفحه دوم"),
                ),
                new RaisedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: new Text("بازگشت "),
                ),
              ],
            )
          ],
        )),
      ),
    );
  }
}
