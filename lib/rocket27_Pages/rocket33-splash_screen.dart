import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() {
    var _duration = Duration(seconds: 5);
    return Timer(_duration, navigationPage);
  }

  navigationPage() {
    Navigator.of(context).pushReplacementNamed("/login");
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: new Color(0xff075e54),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 125,
                  height: 125,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/icon_whatsapp.png",
                      ),
                    ),
                  ),
                ),
                Text(
                  "واتساپ",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: CircularProgressIndicator()),
            ),
          ],
        ));
  }
}
