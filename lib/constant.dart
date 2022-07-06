import 'package:flutter/material.dart';

const kTextFieldStyle = InputDecoration(
    contentPadding:
    EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
    enabledBorder: OutlineInputBorder(
      borderSide:
      BorderSide(color: Colors.lightBlueAccent, width: 1.0),
      borderRadius: BorderRadius.all(
        Radius.circular(32.0),
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide:
      BorderSide(color: Colors.lightBlueAccent, width: 2.0),
      borderRadius: BorderRadius.all(
        Radius.circular(32.0),
      ),
    ),
    hintText: 'Enter your mail');