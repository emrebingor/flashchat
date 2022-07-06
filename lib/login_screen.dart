import 'package:flashchat_app_flutter/constant.dart';
import 'package:flashchat_app_flutter/rounded_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  String? email;
  String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Flexible(
            child: Hero(
              tag: 'logo',
              child: Image(
                image: AssetImage('images/logo.png'),
              ),
            ),
          ),
          SizedBox(
            height: 48.0,
          ),
          TextField(
            keyboardType: TextInputType.emailAddress,
            textAlign: TextAlign.center,
            onChanged: (value) {
              email = value;
            },
            decoration: kTextFieldStyle.copyWith(hintText: 'Enter your mail'),
          ),
          SizedBox(
            height: 8.0,
          ),
          TextField(
            keyboardType: TextInputType.emailAddress,
            textAlign: TextAlign.center,
            onChanged: (value) {
              email = value;
            },
            decoration:
                kTextFieldStyle.copyWith(hintText: 'Enter your password'),
          ),
          SizedBox(
            height: 24.0,
          ),
          RoundedButton(
              color: Colors.lightBlueAccent,
              onPressed: () {},
              buttonName: 'Log in')
        ],
      ),
    );
  }
}
