import 'package:flutter/material.dart';

class WhatsApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _WhatsAppState();
  }
}

class _WhatsAppState extends State<WhatsApp> {
  TabController tabController;
  @override
  void initState() {
     super.initState();
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
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.camera_alt),
            ),
            new Tab(
              text: ' چت ها ',
            ),
            new Tab(
              text: ' وضیعت ها ',
            ),
            new Tab(
              icon: new Icon(Icons.camera_alt),
            ),
            new Tab(
              icon: new Icon(Icons.camera_alt),
            ),
          ],
        ),
      ),
    );
  }
}
