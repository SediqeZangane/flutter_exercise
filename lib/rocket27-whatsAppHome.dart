import 'package:flutter/material.dart';
import 'package:flutter_exercise/rocket27-whatsApp.dart';
import 'package:flutter_exercise/rocket27_Pages/rocket30-create_chat_screen.dart';
import 'package:flutter_exercise/rocket27_Pages/rocket30-setting_screen.dart';
import 'package:flutter_exercise/rocket27_Pages/rocket33-splash_screen.dart';
import 'package:flutter_exercise/rocket27_Pages/roocket36_Login_Screen.dart';
import 'package:flutter_exercise/rocket29-whatsAppWithNestedScrollview.dart';

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
      //mikhaym initial screen az whatsapp be splash taqir bedim
      initialRoute: "/splash_screen",
      routes: {
        //routeAsli
        "/": (context) =>
            Directionality(textDirection: TextDirection.rtl, child: WhatsApp()),

        "/login": (context) => Directionality(
            textDirection: TextDirection.rtl, child: LoginScreen()),

        "/splash_screen": (context) => Directionality(
            textDirection: TextDirection.rtl, child: SplashScreen()),

        "/setting": (context) => settingScreen(),
        "/new_group": (context) => createChatScreen(),
      },
      // home: new Directionality(
      //   //ba initial route mitavan route Asliro moshakhas kard ke route asli ma inja whatsapp hast
      //     textDirection: TextDirection.rtl, child: WhatsApp()),
    );
  }
}
