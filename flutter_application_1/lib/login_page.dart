// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'regist.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

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
                padding: EdgeInsets.all(5.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Login',
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
                              text: 'Bergabung dengan LinkedIn',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromRGBO(1, 59, 159, 1),
                                  fontWeight: FontWeight.bold),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => RegistPage()));
                                }),
                        ]),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton.icon(
                      icon: Image.asset(
                        'assets/images/google.png',
                        height: 30,
                        fit: BoxFit.cover,
                      ),
                      label: Text('Login dengan Google'),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        minimumSize: Size(double.infinity, 50),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    ElevatedButton.icon(
                      icon: Image.asset(
                        'assets/images/apple.png',
                        height: 37,
                        fit: BoxFit.cover,
                      ),
                      label: Text('Login dengan Apple'),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        minimumSize: Size(double.infinity, 50),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    ElevatedButton.icon(
                      icon: Image.asset(
                        'assets/images/facebook.png',
                        height: 30,
                        fit: BoxFit.cover,
                      ),
                      label: Text('Login dengan Facebook'),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        minimumSize: Size(double.infinity, 50),
                      ),
                    ),
                    SizedBox(height: 25.0),
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
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Email atau Telepon',
                        ),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Kata Sandi',
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscureText
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            onPressed: _togglePasswordVisibility,
                          ),
                        ),
                        obscureText: _obscureText,
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Row(
                      children: <Widget>[
                        SizedBox(
                          height: 24.0,
                          width: 24.0,
                          child: Checkbox(
                            value: true,
                            onChanged: (value) {},
                          ),
                        ),
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: 'Ingat saya. ',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: 'Pelajari lebih lanjut',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(1, 59, 159, 1),
                                    fontWeight: FontWeight.bold)),
                          ]),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 31,
                    ),
                    Container(
                      alignment: Alignment.bottomLeft,
                      padding: EdgeInsets.only(left: 4),
                      child: Text(
                        'Lupa kata sandi?',
                        style: TextStyle(
                            color: Color.fromRGBO(1, 59, 159, 1),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 24.0),
                    ElevatedButton(
                      child: Text('Lanjutkan'),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(double.infinity, 50),
                          backgroundColor: Color.fromRGBO(2, 61, 160, 1),
                          foregroundColor: Colors.white),
                    ),
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
