import 'package:flutter/material.dart';
import 'package:flutter_exercise/rocket27_Pages/Call_Screen.dart';
import 'package:flutter_exercise/rocket27_Pages/Camera_Screen.dart';
import 'package:flutter_exercise/rocket27_Pages/Chat_Screen.dart';
import 'package:flutter_exercise/rocket27_Pages/Status_Screen.dart';

class WhatsApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _WhatsAppState();
  }
}

class _WhatsAppState extends State<WhatsApp> with TickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = new TabController(initialIndex: 1,length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 5,
        title:
            new Text("واتساپ", style: TextStyle(fontWeight: FontWeight.bold)),
        actions: <Widget>[
          new Icon(Icons.search),
          new Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
          ),
          new Icon(Icons.more_vert),
          new Padding(
            padding: EdgeInsets.symmetric(horizontal: 3),
          ),
        ],
        bottom: new TabBar(
          indicatorColor: Colors.white,
          controller: tabController,
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.camera_alt),
            ),
            new Tab(
              text: ' چت ها ',
            ),
            new Tab(
              text: ' وضیعت  ',
            ),
            new Tab(
              text: "تماس ها",
            ),
          ],
        ),
      ),
      body: new TabBarView(
        controller: tabController,
        children: <Widget>[
          new CameraScreen(),
          new ChatScreen(),
          new StatusScreen(),
          new CallScreen(),
        ],
      ),
    );
  }
}
