import 'package:flutter/material.dart';
import 'package:flutter_exercise/myTry_ClassData.dart';

class TabOne extends StatefulWidget {
  mamad littleMamad;

  TabOne({this.littleMamad});

  @override
  _TabOneState createState() => _TabOneState();
}

class _TabOneState extends State<TabOne> {
  TextEditingController _controllerTextFormField;
  TextEditingController _controllerTextField;
  mamad littleMamad;

  @override
  void initState() {
    super.initState();
    _controllerTextFormField =
        TextEditingController( text: " INITIAL");
    _controllerTextField = TextEditingController(text: " INITIALdata ");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            controller: _controllerTextFormField,
          ),
          TextField(
            controller: _controllerTextField,
          ),
          SizedBox(
            height: 75,
          ),
          RaisedButton(
            child: Text("send data"),
            onPressed: () {
              print("clicked");
            },
          ),
        ],
      ),
    );
  }
}
