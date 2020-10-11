import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rxdart/rxdart.dart';

class BlocTestScreen extends StatefulWidget {
  @override
  State createState() => _BlocTestScreen();
}

class _BlocTestScreen extends State<BlocTestScreen> {
  MyBloc myBloc = new MyBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Test"),
      ),
      body: Column(
        children: [
          StreamBuilder(
            stream: myBloc.countController,
            builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
              String text;
              if (snapshot.hasData) {
                text = snapshot.data.toString();
              } else {
                text = '0';
              }
              return Text(text);
            },
          ),
          FutureBuilder(
            future: myBloc.getNum(),
            builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
              String text;
              if (snapshot.hasData) {
                text = snapshot.data;
              } else {
                text = '555';
              }
              return Text(text);
            },
          )
        ],
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: myBloc.onButtonClick),
    );
  }

  @override
  void dispose() {
    super.dispose();
    myBloc.dispose();
  }
}

class MyBloc {
  Network network;

  MyBloc() {
    network = Network();
    network.a.listen((bool value) {
      int bbbb = 0;
    });
  }

  BehaviorSubject<int> countController = new BehaviorSubject<int>();

  void onButtonClick() {
    network.b();
    // int count = countController.value ?? 0;
    // countController.add(count + 1);
  }

  Future<String> getNum() async {
    await Future.delayed(Duration(seconds: 3));
    return "AAA";
  }

  void dispose() {
    countController.close();
  }
}

class Network {
  BehaviorSubject<bool> a = new BehaviorSubject<bool>();

  int b() {
    // reafte az internet etelaat migirad
    a.add(true);
    return 1;
  }
}

class DB {
  int a() {
    // reafte az database etelaat migirad
    return 1;
  }
}
