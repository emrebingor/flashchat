import 'package:flashchat_app_flutter/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  AnimationController controller;
  Animation animation;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            children: <Widget>[
              Hero(
                tag: 'logo',
                child: Image(
                  image: AssetImage('images(logo.png'),
                ),
              ),
              Text(
                'Flash Chat',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          RoundedButton(
            color: Colors.lightBlueAccent,
            onPressed: () {},
            buttonName: 'Log in',
          ),
          RoundedButton(
              color: Colors.lightBlueAccent,
              onPressed: () {},
              buttonName: 'Register'),
        ],
      ),
    );
  }
}
