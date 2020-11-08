import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_exercise/StatefulBuilder.dart';
import 'package:flutter_exercise/animations/signin_animation.dart';
import 'package:flutter_exercise/components/roocket36_Form.dart';
import 'package:flutter_exercise/rocket27_Pages/Camera_Screen.dart';
import 'package:flutter_exercise/rocket28_ChatModel.dart';
import 'package:flutter_exercise/services/auth_services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _loginButtonController;
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  String _emailValue;
  String _passwordValue;

  // final _myTextFieldController = TextEditingController();

  emailOnSaved(String value) {
    print(" your email is " + value);
    _emailValue = value;
  }

  passwordOnSaved(String value) {
    print(" your email is " + value);
    _passwordValue = value;
  }

  @override
  void initState() {
    super.initState();
    _loginButtonController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));
    // _myTextFieldController.addListener(() {
    //   print(_myTextFieldController.text);
    // });
  }

  @override
  void dispose() {
    _loginButtonController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    timeDilation = .4;
    var page = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      resizeToAvoidBottomPadding: false,
      body: Container(
        // decoration: BoxDecoration(
        //     gradient: LinearGradient(colors: <Color>[
        //   const Color(0xff2c5364),
        //   const Color(0xff0f2027),
        // ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Opacity(
              opacity: 0.4,
              child: Container(
                alignment: Alignment.center,
                width: page.width,
                height: page.height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/qq.jpg"),
                        repeat: ImageRepeat.repeat)),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FormContainer(
                  formKey: _formKey,
                  emailOnSaved: emailOnSaved,
                  passwordOnSaved: passwordOnSaved,
                ),
                // TextField(controller: _myTextFieldController,),
                new FlatButton(
                  onPressed: null,
                  child: Text(
                    "آیا هیچ اکانتی ندارید؟ عضویت",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.5,
                        color: Colors.white,
                        fontSize: 14),
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () async {
                // print((_myTextFieldController.text)+"hello");
                if (_formKey.currentState.validate()) {
                  _formKey.currentState.save();
                  print("http request");
                  // print(_emailValue);
                  // print(_passwordValue);
                  sendDataForLogin();
                }
              },
              child: SignInAnimation(
                controller: _loginButtonController.view,
              ),
            ),
          ],
        ),
      ),
    );
  }

  sendDataForLogin() async {
    await _loginButtonController.animateTo(0.150);
    // await _loginButtonController.forward();
    // await _loginButtonController.reverse();

    // await sendDataToServer({"email": _emailValue, "password": _passwordValue});
//baray inke Az methode un safe estefade konim classesho seda zadim
    Map response = await (new AuthService())
        .sendDataToServer({"email": _emailValue, "password": _passwordValue});
    if (response["status"] == "success") {
      await storeUserData(response['data']);
      await _loginButtonController.forward();
      Navigator.pushReplacementNamed(context, "/");
    } else {
      await _loginButtonController.reverse();
      _scaffoldKey.currentState.showSnackBar(
        SnackBar(
          content: Text(
            response["data"],
          ),
        ),
      );
    }
  }

  storeUserData(Map userData) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('user.api_token', userData['api_token']);
    await prefs.setString('user.api_id', userData['user_id']);
  }
}
