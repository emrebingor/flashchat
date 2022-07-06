import 'package:flashchat_app_flutter/constant.dart';
import 'package:flashchat_app_flutter/welcome_screen.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {

  static const String id = 'chat_screen';

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  String? message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: null,
        title: Text('⚡️Chat'),
        backgroundColor: Colors.lightBlueAccent,
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, WelcomeScreen.id);
            },
            icon: Icon(Icons.close),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            decoration: kContainerDecoration,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: TextField(
                    onChanged: (value) {
                      message = value;
                    },
                    decoration: kTextFieldDecoration,
                  ),
                ),
                TextButton(
                  onPressed: () {
                  },
                  child: Text(
                    'Send',
                    style: kSendTextButtonStyle,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
