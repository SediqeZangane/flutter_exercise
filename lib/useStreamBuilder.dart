import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class ShowTextField extends StatefulWidget {
  @override
  _ShowTextFieldState createState() => _ShowTextFieldState();
}

class _ShowTextFieldState extends State<ShowTextField> {
  BLOC myBloc = BLOC();

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
          TextField(
            controller: myBloc.textFieldController,
          ),
          SizedBox(height: 20),
          Card(
            elevation: 10,
            shadowColor: Colors.red,
            child: StreamBuilder(
              stream: myBloc.textController,
              builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
                String text;
                if (snapshot.hasData) {
                  text = snapshot.data;
                } else {
                  text = '0';
                }
                return Text(text,
                    style: TextStyle(fontSize: 20, color: Colors.lightBlue));
              },
            ),

          ),
          SizedBox(height: 20),
          FlatButton(child:Text("Press Button"),
          onPressed: myBloc.onButtonClick,
          ),
        ],
      ),
    );
  }
}

class BLOC {
  BehaviorSubject<String> textController = new BehaviorSubject<String>();

  void onButtonClick() {
    // String text = textController.value ?? "nothing to show";
    // textController.add(text);
    textController.add(textFieldController.text);
  }

  TextEditingController textFieldController = TextEditingController();
}
