import 'package:flashchat_app_flutter/constant.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Flexible(
            child: Hero(
              tag: 'logo',
              child: Image(
                image: AssetImage('images/logo.png'),
              ),
            ),
          ),
          TextField(
            keyboardType: TextInputType.emailAddress,
            textAlign: TextAlign.center,
            onChanged: (value) {},
            decoration: kTextFieldStyle.copyWith(hintText: 'Enter your mail'),
          ),
          TextField(
            keyboardType: TextInputType.emailAddress,
            textAlign: TextAlign.center,
            onChanged: (value){

            },
            decoration: kTextFieldStyle.copyWith(hintText: 'Enter your password'),
          ),
        ],
      ),
    );
  }
}
