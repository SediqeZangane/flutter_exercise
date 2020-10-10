import 'package:flutter/material.dart';

class statefulBuilder extends StatelessWidget {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful Builder"),
        centerTitle: true,
      ),
      body: Center(
        child: StatefulBuilder(
          builder: (BuildContext ctx, StateSetter setState) {
            return Column(
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
                      onPressed: () {
                        setState(() {
                          _counter++;
                        });
                      },
                      child: Text("+", style: TextStyle(fontSize: 50)),
                    ),
                    FlatButton(
                      onPressed: () {
                        setState(() {
                          _counter--;
                        });
                      },
                      child: Text('-', style: TextStyle(fontSize: 50)),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
