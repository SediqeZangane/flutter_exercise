import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      new ChangeNotifierProvider<MyBloc>(create: (_) {
        return new MyBloc();
      })
    ],
    child: new MyProvider(),
  ));
}

class MyProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Provider(),
    );
  }
}

class Provider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Provider')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'My Number : ${context.watch<MyBloc>().conut}',
              style: Theme.of(context).textTheme.headline4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  onPressed: () => context.read<MyBloc>()._increment(),
                  child: Text("+", style: TextStyle(fontSize: 50)),
                ),
                FlatButton(
                  onPressed: () => context.read<MyBloc>()._decrement(),
                  child: Text('-', style: TextStyle(fontSize: 50)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MyBloc with ChangeNotifier {
  int _conut = 0;

  int get conut => _conut;

  set conuter(int value) {
    _conut = value;
    notifyListeners();
  }

  _increment() {
    conuter = _conut + 1;
  }

  _decrement() {
    conuter = _conut - 1;
  }
}
