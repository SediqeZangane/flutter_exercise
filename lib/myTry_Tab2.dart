import 'package:flutter/material.dart';
import 'package:flutter_exercise/myTry_ClassData.dart';

class TabTwo extends StatefulWidget {
  mamad littleMamad;

  TabTwo({this.littleMamad});

  @override
  _TabOneState createState() => _TabOneState();
}

class _TabOneState extends State<TabTwo> {
  TextEditingController _controllerTextFormField222;
  TextEditingController _controllerTextField222;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controllerTextFormField222 = TextEditingController(text: " INITIAL ");
    _controllerTextField222 = TextEditingController(text: " INITIAL2 ");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            controller: _controllerTextFormField222,
            decoration: InputDecoration(
                hintText: " input data ",
                hintStyle: TextStyle(color: Colors.orange, fontSize: 15)),
          ),
          TextField(
            controller: _controllerTextField222,
            decoration: InputDecoration(
                hintText: " data ",
                hintStyle: TextStyle(color: Colors.red, fontSize: 15)),
          ),
        ],
      ),
    );
  }
}
