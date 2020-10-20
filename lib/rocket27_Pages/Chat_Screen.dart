import 'package:flutter/material.dart';
import 'package:flutter_exercise/rocket27_Pages/rocket30-single_chat_screen.dart';
import 'package:flutter_exercise/rocket28_ChatModel.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: ChatDataList.length,
      itemBuilder: (
        context,
        index,
      ) {
        return new Column(
          children: <Widget>[
            new GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return new singleChatScreen(chatModel: ChatDataList[index],
                  );
                }));
              },
              child: new ListTile(
                leading: new CircleAvatar(
                  backgroundColor: Colors.pink,
                ),
                title: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text(
                      ChatDataList[index].name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    new Text(
                      ChatDataList[index].time,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                subtitle: new Text(
                  ChatDataList[index].message,
                  style: TextStyle(color: Colors.grey),
                ),
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
