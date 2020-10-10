import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StateManagmentSetState(title: 'Set State')));
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: StateManagmentSetState(title: 'Set State'),
//     );
//   }
// }

class StateManagmentSetState extends StatefulWidget {
  StateManagmentSetState({Key key, @required this.title}) : super(key: key);

  final String title;

  @override
  _StateManagmentSetStateState createState() => _StateManagmentSetStateState();
}

class _StateManagmentSetStateState extends State<StateManagmentSetState> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title??"tttttttttt"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'My Number : $_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  onPressed: () => _incrementCounter(),
                  child: Text("+", style: TextStyle(fontSize: 50)),
                ),
                FlatButton(
                  onPressed: () {
                    _decrementCounter();
                  },
                  child: Text('-', style: TextStyle(fontSize: 50)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }
}
