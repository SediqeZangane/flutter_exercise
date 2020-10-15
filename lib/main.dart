import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_exercise/SetState.dart';
import 'package:flutter_exercise/bloc_soul.dart';
import 'package:flutter_exercise/rocket18_ShoppingCart.dart';
import 'package:flutter_exercise/rocket20_instaApp.dart';
import 'package:flutter_exercise/useStreamBuilder.dart';
import 'package:flutter_exercise/rocket27-whatsApp.dart';
import 'StatefulBuilder.dart';
import 'package:flutter_exercise/rocket27-whatsApp.dart';
import 'package:flutter_exercise/rocket27-whatsAppHome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WhatsAppHome(),
    );
  }
}
