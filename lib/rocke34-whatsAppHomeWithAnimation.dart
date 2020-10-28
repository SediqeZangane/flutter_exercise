// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_exercise/rocket27-whatsApp.dart';
// import 'package:flutter_exercise/rocket27_Pages/rocket30-create_chat_screen.dart';
// import 'package:flutter_exercise/rocket27_Pages/rocket30-setting_screen.dart';
// import 'package:flutter_exercise/rocket27_Pages/rocket33-splash_screen.dart';
// import 'package:flutter_exercise/rocket29-whatsAppWithNestedScrollview.dart';
//
// class WhatsAppHome extends StatefulWidget {
//   @override
//   _WhatsAppHomeState createState() => _WhatsAppHomeState();
// }
//
// class _WhatsAppHomeState extends State<WhatsAppHome>
//     with SingleTickerProviderStateMixin {
//   AnimationController animationController;
//   Animation<double> animation;
//
//   @override
//   void initState() {
//     super.initState();
//     animationController = AnimationController(
//         vsync: this, duration: Duration(milliseconds: 2000));
//     animation = Tween(begin: 0.0, end: 300.0).animate(CurvedAnimation(
//         parent: animationController, curve: Curves.easeInCubic));
//
//     animationController.addListener(() {
//       if (animationController.isCompleted) {
//         animationController.reverse();
//       } else if (animationController.isDismissed) {
//         // animationController.forward();
//       }
//     });
//   }
//
//   Widget _animationBuilder(BuildContext context, Widget child) {
//     return Container(
//       margin: EdgeInsets.symmetric(vertical: 10),
//       height: animation.value,
//       width: animation.value,
//       child: FlutterLogo(),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       title: 'WhatsApp',
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               AnimatedBuilder(
//                 animation: animationController,
//                 builder: _animationBuilder,
//               ),
//               RaisedButton(
//                 onPressed: () {
//                   animationController.forward();
//                 },
//                 child: Text("Run"),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
