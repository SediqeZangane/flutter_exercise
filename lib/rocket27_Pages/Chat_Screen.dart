import 'package:flutter/material.dart';
import 'package:flutter_exercise/rocket28_ChatModel.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: ChatData.length,
      itemBuilder: (
        context,
        index,
      ) {
        return new Column(
          children: <Widget>[
            new ListTile(
              leading: new CircleAvatar(
                backgroundColor: Colors.pink,
              ),
              title: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Text(
                    ChatData[index].name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  new Text(
                    ChatData[index].time,
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              subtitle: new Text(
                ChatData[index].message,
                style: TextStyle(color: Colors.grey),
              ),
            ),
            new Divider(
              height: 10,
            ),
          ],
        );
      },
    );
  }
}
