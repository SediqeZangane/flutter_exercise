import 'package:flutter/material.dart';
import 'package:flutter_exercise/rocket24-instaPost.dart';
import 'package:flutter_exercise/rocket23_ListStories.dart';

class home_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    return new ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return index == 0
            ? new SizedBox(
                child: ListStories(),
                height: (MediaQuery.of(context).size.height) * 0.15,
              )
            : SizedBox(
                child: rocket24_Post,
                height: (MediaQuery.of(context).size.height) * 0.85,
              );
      },
    );
  }
}
