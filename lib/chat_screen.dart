import 'package:flashchat_app_flutter/constant.dart';
import 'package:flashchat_app_flutter/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ChatScreen extends StatefulWidget {

  static const String id = 'chat_screen';

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  final _auth = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;
  User? loggedInUser;
  String? message;

  @override
  void initState(){
    super.initState();
    getCurrentUser();
  }


  void getCurrentUser() async {

    try {
      final user = await _auth.currentUser;
      if (user != null) {
        loggedInUser = user;
      }
      } catch (e){
        print(e);
    }
    }



    void messagesStream() async{
     await for(var snapshot in _firestore.collection('messages').snapshots()){
       for(var message in snapshot.docs){
         print(message.data());
       }
     }
    }


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
              messagesStream();
              _auth.signOut();
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
          StreamBuilder<QuerySnapshot>(
            stream: _firestore.collection('messages').snapshots(),
            builder: (context, snapshot){
              List<Text> messageWidgets = [];
              if (!snapshot.hasData){
                return Center(
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.lightBlueAccent,
                  ),
                );
              }
                final messages = snapshot.data?.docs;

                for (var message in messages!){
                  try{

                    final messageText = message.get('text');
                    final messageSender = message.get('sender');
                    final messageWidget = Text('$messageText from $messageSender');

                    messageWidgets.add(messageWidget);
                  } catch(e){
                    print(e);
                    }
                  }
                return Column(children: messageWidgets,
                );
            },
          ),
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
                    _firestore.collection('messages').add({
                      'text': message,
                      'sender': loggedInUser?.email,
                    });
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
