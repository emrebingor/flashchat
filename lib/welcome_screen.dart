import 'package:flashchat_app_flutter/login_screen.dart';
import 'package:flashchat_app_flutter/register_screen.dart';
import 'package:flashchat_app_flutter/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white)
        .animate(controller);

    controller.forward();

    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
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
              AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    'Flash Chat',
                    speed: Duration(milliseconds: 200),
                    textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 45.0,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
          RoundedButton(
            color: Colors.lightBlueAccent,
            onPressed: () {
              Navigator.pushNamed(context, LoginScreen.id);
            },
            buttonName: 'Log in',
          ),
          RoundedButton(
              color: Colors.lightBlueAccent,
              onPressed: () {
                Navigator.pushNamed(context, RegisterScreen.id);
              },
              buttonName: 'Register'),
        ],
      ),
    );
  }
}
