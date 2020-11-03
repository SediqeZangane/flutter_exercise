import 'package:flutter/material.dart';
import 'package:flutter_exercise/components/36inputFields.dart';
import 'package:validators/validators.dart';

class FormContainer extends StatelessWidget {
  final formKey;
  final emailOnSaved;
  final passwordOnSaved;

  FormContainer(
      {@required this.formKey, this.emailOnSaved, this.passwordOnSaved});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: new Column(
        children: <Widget>[
          new Form(
            key: formKey,
            child: new Column(
              children: <Widget>[
                new InputFieldArea(
                    hint: "ایمیل کاربری",
                    obscure: false,
                    icon: Icons.person_outline,
                    validator: (String value) {
                      if (!isEmail(value)) return "ایمیل وارد شده معتبر نیست";
                    },
                    onSaved: emailOnSaved),
                new InputFieldArea(
                    hint: "پسورد",
                    obscure: true,
                    icon: Icons.lock_open,
                    validator: (String value) {
                      if (value.length < 5)
                        return "طول پسورد باید حداقل 6 کاراکتر باشد";
                    },
                    onSaved: passwordOnSaved),
              ],
            ),
          )
        ],
      ),
    );
  }
}
