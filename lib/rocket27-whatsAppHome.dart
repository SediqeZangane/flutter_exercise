import 'package:flutter/material.dart';
import 'package:flutter_exercise/rocket27-whatsApp.dart';

class WhatsAppHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'WhatsApp',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        fontFamily: 'Vazir',
        primaryColor: new Color(0xff075e54),
        accentColor: new Color(0xff25d366),

        // primaryIconTheme: IconThemeData(color: Colors.black),
        // primaryTextTheme: TextTheme(title: TextStyle(color: Colors.black))),
      ),
      home: new Directionality(
          textDirection: TextDirection.rtl, child: WhatsApp()),
    );
  }
}
