// import 'package:flutter/material.dart';
// import 'package:flutter_exercise/rocket21Pages/home_Page.dart';
// import 'rocket21Pages/accountBox_Page.dart';
// import 'rocket21Pages/addBox_Page.dart';
// import 'rocket21Pages/favorite_Page.dart';
// import 'rocket21Pages/search_Page.dart';
//
// class MyHomePages20 extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return MyHomePageState20();
//   }
// }
//
// class MyHomePageState20 extends State<MyHomePages20> {
//   int currentPageIndex = 0;
//
//   final List children = [
//     new home_Page(),
//     new search_Page(),
//     new addBox_Page(),
//     new favorite_Page(),
//     new accountBox_Page()
//   ];
//
//   final appBar = new AppBar(
//     backgroundColor: new Color(0xfff8f8f8),
//     elevation: 1.0,
//     centerTitle: true,
//     leading: new Icon(Icons.camera_alt),
//     title: SizedBox(
//       height: 40.0,
//       child: new Image.asset("assets/images/insta_logo.png"),
//     ),
//     actions: <Widget>[
//       Padding(
//           padding: EdgeInsets.only(right: 12.0), child: new Icon(Icons.send)),
//     ],
//   );
//
//   changePage(int indexPage) {
//     setState(() {
//       currentPageIndex = indexPage;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//         appBar: appBar,
//         body: this.children[currentPageIndex],
//         bottomNavigationBar: new BottomNavigationBar(
//           items: <BottomNavigationBarItem>[
//             new BottomNavigationBarItem(
//                 icon: new Icon(Icons.home, color: Colors.black),
//                 title: new Text(
//                   'home',
//                   style: TextStyle(color: Colors.black),
//                 )),
//             new BottomNavigationBarItem(
//                 icon: new Icon(Icons.search, color: Colors.black),
//                 title:
//                     new Text('search', style: TextStyle(color: Colors.black))),
//             new BottomNavigationBarItem(
//                 icon: new Icon(Icons.add_box, color: Colors.black),
//                 title:
//                     new Text('addBox', style: TextStyle(color: Colors.black))),
//             new BottomNavigationBarItem(
//                 icon: new Icon(Icons.favorite, color: Colors.black),
//                 title: new Text('favorite',
//                     style: TextStyle(color: Colors.black))),
//             new BottomNavigationBarItem(
//                 icon: new Icon(Icons.account_box, color: Colors.black),
//                 title: new Text('accountBox',
//                     style: TextStyle(color: Colors.black))),
//           ],
//           onTap: changePage,
//           currentIndex: currentPageIndex,
//         ));
//   }
// }
