import 'package:flutter/material.dart';
import 'package:flutter_exercise/myTry_ClassData.dart';
import 'package:flutter_exercise/myTry_Tab1.dart';
import 'package:flutter_exercise/myTry_Tab2.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  TabController tabController;
  mamad littleMamad = mamad();

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Try for send data from first Tab to second"),
        bottom: TabBar(
          controller: tabController,
          tabs: [
            Tab(
              text: "stepOne",
            ),
            Tab(
              text: "stepTwo",
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          TabOne(littleMamad: littleMamad),
          TabTwo(littleMamad: littleMamad),
        ],
      ),
    );
  }
}
