// import 'package:flutter/material.dart';
// import 'package:flutter_exercise/rocket27_Pages/Call_Screen.dart';
// import 'package:flutter_exercise/rocket27_Pages/Camera_Screen.dart';
// import 'package:flutter_exercise/rocket27_Pages/Chat_Screen.dart';
// import 'package:flutter_exercise/rocket27_Pages/Status_Screen.dart';
//
// class WhatsApp extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return new _WhatsAppState();
//   }
// }
//
// class _WhatsAppState extends State<WhatsApp> with TickerProviderStateMixin {
//   TabController tabController;
//
//   @override
//   void initState() {
//     super.initState();
//     tabController = new TabController(initialIndex: 1, length: 4, vsync: this);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: new AppBar(
//         elevation: 5,
//         title: new Text(
//           "واتساپ",
//         ),
//         actions: <Widget>[
//           new Icon(Icons.search),
//           new Padding(
//             padding: EdgeInsets.symmetric(horizontal: 8),
//           ),
//           new PopupMenuButton<String>(
//             // onSelected: (String choice) {
//             //   print(choice);
//             // },
//             itemBuilder: (BuildContext context) {
//               return [
//                 new PopupMenuItem(
//                   // value: 'new_group',
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       new Text("گروه جدید"),
//                     ],
//                   ),
//                 ),
//                 new PopupMenuItem(
//                   // value: 'setting',
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       new Text("تنظیمات "),
//                     ],
//                   ),
//                 ),
//               ];
//             },
//           ),
//           new Padding(
//             padding: EdgeInsets.symmetric(horizontal: 3),
//           ),
//         ],
//         bottom: new TabBar(
//           indicatorColor: Colors.white,
//           controller: tabController,
//           tabs: <Widget>[
//             new Tab(
//               icon: new Icon(Icons.camera_alt),
//             ),
//             new Tab(
//               text: ' چت ها ',
//             ),
//             new Tab(
//               text: ' وضیعت  ',
//             ),
//             new Tab(
//               text: "تماس ها",
//             ),
//           ],
//         ),
//       ),
//       body: new TabBarView(
//         controller: tabController,
//         children: <Widget>[
//           new CameraScreen(),
//           new ChatScreen(),
//           new StatusScreen(),
//           new CallScreen(),
//         ],
//       ),
//       floatingActionButton: new FloatingActionButton(
//         // backgroundColor: new Color(0xff25d366),
//         //raveshe digar baray color
//         backgroundColor: Theme.of(context).accentColor,
//         child: new Icon(
//           Icons.message,
//           color: Colors.white,
//         ),
//         onPressed: () {
//           print('open chat');
//         },
//       ),
//     );
//   }
// }
