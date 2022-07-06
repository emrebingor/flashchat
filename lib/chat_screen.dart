import 'package:flashchat_app_flutter/constant.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
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
            onPressed: () {},
            icon: Icon(Icons.close),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
                  onPressed: () {},
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
