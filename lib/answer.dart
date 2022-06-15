// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Answer extends StatelessWidget {
  final String answerText;
  final Function() x;

  // ignore: use_key_in_widget_constructors, prefer_const_constructors_in_immutables
  Answer(this.x, this.answerText);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      width: double.infinity,
      // ignore: prefer_const_constructors
      margin: EdgeInsets.all(7.0),
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        onPressed: x,
        // ignore: prefer_const_constructors
        child: Text(
          answerText,
          // ignore: prefer_const_constructors
          style: TextStyle(fontSize: 15),
        ),
      ),
    );
  }
}
