// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_application_1/login_page.dart';
import 'package:flutter_application_1/widget/customButton.dart';
import 'package:flutter_application_1/widget/custumTextField.dart';

class RegistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
            Image.asset(
              'assets/images/logos.png',
              width: 80,
              height: 44,
            ),
          ])),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Center(
            child: Container(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Bergabung dengan LinkedIn',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      alignment: Alignment.topLeft,
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: 'atau ',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey)),
                          TextSpan(
                              text: 'Login',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromRGBO(1, 59, 159, 1),
                                  fontWeight: FontWeight.bold),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.pop(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginPage()));
                                }),
                        ]),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(height: 25.0),
                    Custumtextfield(
                        labelText: 'Email atau Teliiiiepon',
                        obscureText: false,
                        hasSuffixIcon: false,
                        suffixIconData: null),
                    SizedBox(height: 16.0),
                    Custombutton(
                        TextButton: 'Lanjutkan',
                        backgroundColor: Color.fromRGBO(1, 59, 159, 1),
                        onPressed: () {},
                        iconLeft: null,
                        foregroundColor: Colors.white),
                    Row(
                      children: [
                        Expanded(
                            child: new Container(
                                margin: const EdgeInsets.only(
                                    left: 10.0, right: 20.0),
                                child: Divider(
                                  height: 36,
                                ))),
                        Text('atau',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        Expanded(
                            child: new Container(
                                margin: const EdgeInsets.only(
                                    left: 20.0, right: 10.0),
                                child: Divider(
                                  height: 36,
                                ))),
                      ],
                    ),
                    Custombutton(
                        TextButton: 'Login dengan Google',
                        backgroundColor: Colors.white,
                        onPressed: () {},
                        iconLeft: 'assets/images/google.png',
                        foregroundColor: Colors.black),
                    SizedBox(height: 16.0),
                    Custombutton(
                        TextButton: 'Login dengan Facebook',
                        backgroundColor: Colors.white,
                        onPressed: () {},
                        iconLeft: 'assets/images/facebook.png',
                        foregroundColor: Colors.black),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
