import 'package:flutter/material.dart';

class InputFieldArea extends StatelessWidget {
  final String hint;
  final bool obscure;
  final IconData icon;

  InputFieldArea({this.hint, this.obscure, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      decoration: new BoxDecoration(
          border: new Border(
              bottom: new BorderSide(width: 0.5, color: Colors.white30))),
      child: new TextFormField(
        obscureText: obscure,
        style: const TextStyle(color: Colors.white),
        decoration: new InputDecoration(
            icon: new Icon(
              icon,
              color: Colors.white,
            ),
            border: InputBorder.none,
            hintText: hint,
            hintStyle: const TextStyle(color: Colors.white, fontSize: 15),
            contentPadding:
                const EdgeInsets.only(top: 15, right: 0, bottom: 20, left: 5)),
      ),
    );
  }
}
