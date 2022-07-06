import 'package:flutter/material.dart';

const kTextFieldStyle = InputDecoration(
    contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.lightBlueAccent, width: 1.0),
      borderRadius: BorderRadius.all(
        Radius.circular(32.0),
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
      borderRadius: BorderRadius.all(
        Radius.circular(32.0),
      ),
    ),
    hintText: 'Enter your mail');

const kSendTextButtonStyle = TextStyle(
    color: Colors.lightBlueAccent, fontWeight: FontWeight.bold, fontSize: 18.0);

const kContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
  ),
);

const kTextFieldDecoration = InputDecoration(
    contentPadding:
    EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
    border: InputBorder.none,
    hintText: 'Type your message here...');
