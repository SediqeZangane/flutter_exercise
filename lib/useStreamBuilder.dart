import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class ShowTextField extends StatefulWidget {
  @override
  _ShowTextFieldState createState() => _ShowTextFieldState();
}

class _ShowTextFieldState extends State<ShowTextField> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Show Text Field"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          TextField(),
          SizedBox(height: 20),
          Card(
            child: Text("aaaaa"),
            elevation: 15,
            shadowColor: Colors.blue,
          ),
          SizedBox(height: 20),
          FlatButton(
            onPressed: null,
            child: Text(
              "Show Text",
              style: TextStyle(fontSize: 20, color: Colors.lightBlue),
            ),
          ),
        ],
      ),
    );
  }
}

class BLOC {
  BehaviorSubject<String> textFieldController = new BehaviorSubject<String>();

  void onButtonClick() {
    String textfield = textFieldController.value ?? "nothing to show";
    textFieldController.add(textfield);

  }
}
