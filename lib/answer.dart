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
        margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
        width: double.infinity,
        // ignore: prefer_const_constructors

        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 5),
          child: ElevatedButton(
            onPressed: x,
            // ignore: prefer_const_constructors
            child: Text(
              answerText,
              // ignore: prefer_const_constructors
              style: TextStyle(fontSize: 20),
            ),
          ),
        ));
  }
}
