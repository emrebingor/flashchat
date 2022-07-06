import 'package:flutter/material.dart';


class RoundedButton extends StatelessWidget {
  RoundedButton(
      {required this.color, required this.onPressed, required this.buttonName});

  final Color color;
  final Function() onPressed;
  final String buttonName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
          color: color,
          borderRadius: BorderRadius.circular(15.0),
          child: MaterialButton(
              minWidth: 400.0,
              height: 42.0,
              onPressed: onPressed,
              child: Text(
                buttonName,
                style: TextStyle(color: Colors.white),
              ))),
    );
  }
}
