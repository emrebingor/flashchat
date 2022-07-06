import 'package:flashchat_app_flutter/login_screen.dart';
import 'package:flashchat_app_flutter/register_screen.dart';
import 'package:flashchat_app_flutter/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: WelcomeScreen.id,
        routes: {
      WelcomeScreen.id: (context) => WelcomeScreen(),
      LoginScreen.id: (context) => LoginScreen(),
      RegisterScreen.id: (context) => RegisterScreen(),
    });
  }
}
