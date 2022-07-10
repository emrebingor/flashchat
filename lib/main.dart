import 'package:firebase_core/firebase_core.dart';
import 'package:flashchat_app_flutter/screens/chat_screen.dart';
import 'package:flashchat_app_flutter/screens/login_screen.dart';
import 'package:flashchat_app_flutter/screens/register_screen.dart';
import 'package:flashchat_app_flutter/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  );
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
      ChatScreen.id: (context) => ChatScreen(),
    });
  }
}
