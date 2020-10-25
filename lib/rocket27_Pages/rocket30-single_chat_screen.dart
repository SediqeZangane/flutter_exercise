import 'package:flutter/material.dart';
import 'package:flutter_exercise/rocket27_Pages/Camera_Screen.dart';
import 'package:flutter_exercise/rocket28_ChatModel.dart';

class singleChatScreen extends StatelessWidget {
  final ChatModel chatModel;

  singleChatScreen({@required this.chatModel});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: new AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              new GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back),
              ),
              SizedBox(
                width: 10,
              ),
              CircleAvatar(
                backgroundColor: Color(0xff888888),
              ),
              SizedBox(
                width: 10,
              ),
              new Text(
                this.chatModel.name,
                style: TextStyle(fontSize: 17),
              ),
            ],
          ),
        ),
        body: new Center(
            child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Text(
              " صفحه چت " + this.chatModel.name,
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
                    Navigator.pop(context, "سلام${chatModel.name}"); 

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
