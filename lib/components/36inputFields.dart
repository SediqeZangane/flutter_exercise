import 'package:flutter/material.dart';

class InputFieldArea extends StatelessWidget {
  final String hint;
  final bool obscure;
  final IconData icon;
  final validator;
  final onSaved;

  InputFieldArea(
      {this.hint, this.obscure, this.icon, this.validator, this.onSaved});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: new TextFormField(
        validator: validator,
        onSaved: onSaved,
        obscureText: obscure,
        style: const TextStyle(color: Colors.white),
        decoration: new InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white30),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.lightGreenAccent),
            ),
            errorStyle: TextStyle(color: Colors.black87),
            errorBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black87),
            ),
            focusedErrorBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black87),
            ),
            icon: new Icon(
              icon,
              color: Colors.white,
            ),
            hintText: hint,
            hintStyle: const TextStyle(color: Colors.white, fontSize: 15),
            contentPadding:
                const EdgeInsets.only(top: 15, right: 0, bottom: 20, left: 5)),
      ),
    );
  }
}
