import 'package:flutter/material.dart';
import 'package:flutter_exercise/components/roocket36_Form.dart';
import 'package:flutter_exercise/rocket27_Pages/Camera_Screen.dart';
import 'package:flutter_exercise/rocket28_ChatModel.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var page = MediaQuery.of(context).size;
    return Scaffold(
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
                FormContainer(),
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
            new Container(
              margin: const EdgeInsets.only(bottom: 30),
              width: 230,
              height: 60,
              alignment: Alignment.center,
              decoration: new BoxDecoration(
                  color: new Color(0xff075E54),
                  borderRadius:
                      new BorderRadius.all(const Radius.circular(30))),
              child: new Text(
                "ورود",
                style: new TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    letterSpacing: .3),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
