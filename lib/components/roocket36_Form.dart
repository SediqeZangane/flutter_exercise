import 'package:flutter/material.dart';
import 'package:flutter_exercise/components/36inputFields.dart';

class FormContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: new Column(
        children: <Widget>[
          new Form(
            child: new Column(
              children: <Widget>[
                new InputFieldArea(
                    hint: "ایمیل کاربری",
                    obscure: false,
                    icon : Icons.person_outline
                ),
                new InputFieldArea(
                    hint: "پسورد",
                    obscure: true,
                    icon: Icons.lock_open
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
