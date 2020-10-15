import 'package:flutter/material.dart';
import 'package:flutter_exercise/rocket21Pages/home_Page.dart';
import 'rocket21Pages/accountBox_Page.dart';
import 'rocket21Pages/addBox_Page.dart';
import 'rocket21Pages/favorite_Page.dart';
import 'rocket21Pages/search_Page.dart';

class MyHomePages20 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyHomePageState20();
  }
}

class MyHomePageState20 extends State<MyHomePages20> {
  String currentPageName = 'home';

  final Map<String, Widget> children = <String, Widget>{
    'home': new home_Page(),
    'search': new search_Page(),
    'addBox': new addBox_Page(),
    'favorite': new favorite_Page(),
    'accountBox': new accountBox_Page(),
  };

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
          padding: EdgeInsets.only(left: 12.0), child: new Icon(Icons.send)),
    ],
  );

  changePage(String namePage) {
    setState(() {
      currentPageName = namePage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: appBar,
      body: this.children[currentPageName],
      bottomNavigationBar: new Container(
        height: 50,
        color: Colors.white,
        child: new BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new IconButton(
                  icon: new Icon(Icons.home, color: Colors.black),
                  onPressed: () {
                    changePage('home');
                  }),
              new IconButton(
                  icon: new Icon(Icons.search, color: Colors.black),
                  onPressed: () {
                    changePage('search');
                  }),
              new IconButton(
                  icon: new Icon(Icons.add_box, color: Colors.black),
                  onPressed: () {
                    changePage('addBox');
                  }),
              new IconButton(
                  icon: new Icon(Icons.favorite, color: Colors.black),
                  onPressed: () {
                    changePage('favorite');
                  }),
              new IconButton(
                  icon: new Icon(Icons.account_box, color: Colors.black),
                  onPressed: () {
                    changePage('accountBox');
                  })
            ],
          ),
        ),
      ),
    );
  }
}
