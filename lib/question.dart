import 'package:flutter/material.dart';
import 'package:quiz_app/main.dart';

class Question extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final String questionText;
  // ignore: use_key_in_widget_constructors, prefer_const_constructors_in_immutables
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // ignore: prefer_const_constructors
      margin: EdgeInsets.all(20.0),
      child: Text(
        questionText,
        // ignore: prefer_const_constructors
        style: TextStyle(
            fontSize: 25, color: bodyColorBlack, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
