import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatinDemo extends StatefulWidget {
  @override
  _AnimatinDemoState createState() => _AnimatinDemoState();
}

class _AnimatinDemoState extends State<AnimatinDemo>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 2000));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  _playAnimation() async {
    try {
      await _animationController.forward();
      await _animationController.reverse();

    } on TickerCanceled {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stagger Animation '),
      ),
      body: GestureDetector(
        onTap: () {
          _playAnimation();
        },
        child: Center(
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.blueAccent.withOpacity(0.1),
              border: Border.all(
                color: Colors.black.withOpacity(0.5),
              ),
            ),
            child: StaggerAnimation(controller: _animationController.view),
          ),
        ),
      ),
    );
  }
}

class StaggerAnimation extends StatelessWidget {
  final Animation<double> controller;
  final Animation<double> opacity;
  final Animation<double> width;
  final Animation<double> height;
  final Animation<EdgeInsets> padding;
  final Animation<BorderRadius> borderRadius;
  final Animation<Color> color;

  StaggerAnimation({this.controller})
      : opacity = Tween<double>(begin: 0.0, end: 1.0).animate(
            new CurvedAnimation(
                parent: controller,
                curve: new Interval(0.0, 0.100, curve: Curves.ease))),
        width = Tween<double>(begin: 50.0, end: 150.0).animate(
            new CurvedAnimation(
                parent: controller,
                curve: new Interval(0.125, 0.250, curve: Curves.ease))),
        height = Tween<double>(begin: 50.0, end: 150.0).animate(
            new CurvedAnimation(
                parent: controller,
                curve: new Interval(0.250, 0.375, curve: Curves.ease))),
        padding = EdgeInsetsTween(
                begin: const EdgeInsets.only(bottom: 16),
                end: const EdgeInsets.only(bottom: 75))
            .animate(new CurvedAnimation(
                parent: controller,
                curve: new Interval(0.250, 0.375, curve: Curves.ease))),
        borderRadius = BorderRadiusTween(
                begin: BorderRadius.circular(4), end: BorderRadius.circular(75))
            .animate(new CurvedAnimation(
                parent: controller,
                curve: new Interval(0.375, 0.500, curve: Curves.ease))),
        color = ColorTween(begin: Colors.indigo[100], end: Colors.orange[400])
            .animate(new CurvedAnimation(
                parent: controller,
                curve: new Interval(0.500, 0.750, curve: Curves.ease)));

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: buildAnimation,
    );
  }

  Widget buildAnimation(BuildContext context, Widget child) {
    return Container(
      padding: padding.value,
      alignment: Alignment.bottomCenter,
      child: Opacity(
        opacity: opacity.value,
        child: Container(
          width: width.value,
          height: height.value,
          decoration: BoxDecoration(
              color: color.value,
              border: Border.all(color: Colors.indigo[300], width: 3),
              borderRadius: borderRadius.value),
        ),
      ),
    );
  }
}
