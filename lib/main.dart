import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_exercise/SetState.dart';
import 'package:flutter_exercise/bloc_mahdi.dart';
import 'package:flutter_exercise/useStreamBuilder.dart';

import 'StatefulBuilder.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShowTextField(),
    );
  }
}
