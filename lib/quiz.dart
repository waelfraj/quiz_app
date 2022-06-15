import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

// ignore: use_key_in_widget_constructors
class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function(int s) answerQuestion;

  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  Quiz(this.questions, this.questionIndex, this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[questionIndex]['questionText'].toString()),
        ...((questions[questionIndex]['answers'] as List<Map<String, Object>>))
            .map((answer) {
          return Answer(
              () => answerQuestion(int.parse(answer['score'].toString())),
              answer['text'].toString());
        }).toList(),
      ],
    );
  }
}
