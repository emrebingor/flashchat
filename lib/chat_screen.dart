import 'package:flashchat_app_flutter/constant.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
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
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                TextField(),
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
