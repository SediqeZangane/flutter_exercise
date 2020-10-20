import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_exercise/rocket27_Pages/Call_Screen.dart';
import 'package:flutter_exercise/rocket27_Pages/Camera_Screen.dart';
import 'package:flutter_exercise/rocket27_Pages/Chat_Screen.dart';
import 'package:flutter_exercise/rocket27_Pages/Status_Screen.dart';
import 'package:flutter_exercise/rocket27_Pages/rocket30-create_chat_screen.dart';
import 'package:flutter_exercise/rocket27_Pages/rocket30-setting_screen.dart';

class WhatsApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _WhatsAppState();
  }
}

class _WhatsAppState extends State<WhatsApp> with TickerProviderStateMixin {
  TabController tabController;
  Map<String, SliverAppBar> appBarList;
  String _currentAppBar = 'mainAppBar';

  @override
  void initState() {
    super.initState();
    tabController = new TabController(initialIndex: 1, length: 4, vsync: this);
    SliverAppBar mainAppBar = new SliverAppBar(
      pinned: true,
      floating: true,
      elevation: 5,
      title: new Text(
        "واتساپ",
      ),
      actions: <Widget>[
        new GestureDetector(
          child: new Icon(Icons.search),
          onTap: () {
            setState(() {
              _currentAppBar = 'searchAppBar';
            });
          },
        ),
        new Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
        ),
        new PopupMenuButton<String>(
          onSelected: (String choice) {
            if (choice == "setting") {
              Navigator.push(context, new MaterialPageRoute(builder: (context) {
                return settingScreen();
              }));
            }
          },
          itemBuilder: (BuildContext context) {
            return [
              new PopupMenuItem(
                value: 'new_group',
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    new Text("گروه جدید"),
                  ],
                ),
              ),
              new PopupMenuItem(
                value: 'setting',
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    new Text("تنظیمات "),
                  ],
                ),
              ),
            ];
          },
        ),
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
    );
    SliverAppBar searchAppBar = new SliverAppBar(
      title: new TextField(
        decoration: new InputDecoration(
            border: InputBorder.none, hintText: "جستجو ...."),
      ),
      pinned: true,
      floating: true,
      elevation: 5,
      backgroundColor: Colors.white,
      leading: new GestureDetector(
        child: new Padding(
          padding: EdgeInsets.only(right: 12),
          child: new Icon(
            Icons.arrow_back,
            color: new Color(0xff075e54),
          ),
        ),
        onTap: () {
          setState(() {
            _currentAppBar = 'mainAppBar';
          });
        },
      ),
    );
    appBarList = <String, SliverAppBar>{
      'mainAppBar': mainAppBar,
      'searchAppBar': searchAppBar,
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [appBarList[_currentAppBar]];
        },
        body: _currentAppBar == 'mainAppBar'
            ? new TabBarView(
                controller: tabController,
                children: <Widget>[
                  new CameraScreen(),
                  new ChatScreen(),
                  new StatusScreen(),
                  new CallScreen(),
                ],
              )
            : new Center(
                child: new Text("search"),
              ),
      ),
      floatingActionButton: new FloatingActionButton(
        // backgroundColor: new Color(0xff25d366),
        //raveshe digar baray color
        backgroundColor: Theme.of(context).accentColor,
        child: new Icon(
          Icons.message,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.push(context, new MaterialPageRoute(builder: (context) {
            return createChatScreen();
          }));
        },
      ),
    );
  }
}
