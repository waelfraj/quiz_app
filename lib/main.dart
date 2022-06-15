// ignore_for_file: deprecated_member_use, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

Color bodyColorWhite = Colors.white;
Color bodyColorBlack = Colors.black;

class _MyAppState extends State<MyApp> {
  bool isSwitched = false;

  int _totalScore = 0;
  int _questionIndex = 0;

  void answerQuestion(int score) {
    setState(() {
      _questionIndex += 1;
    });
    _totalScore += score;
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
    });
    _totalScore = 0;
  }

  final _questions = [
    {
      'questionText': 'What\'s your favorite color ?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Green', 'score': 20},
        {'text': 'Blue', 'score': 30},
        {'text': 'Yellow', 'score': 40}
      ]
    },
    {
      'questionText': 'what\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Tiger', 'score': 20},
        {'text': 'Elephant', 'score': 30},
        {'text': 'Lion', 'score': 40}
      ]
    },
    {
      'questionText': 'what\'s your favorite instructor?',
      'answers': [
        {'text': 'wael', 'score': 10},
        {'text': 'wael2', 'score': 20},
        {'text': 'wael3', 'score': 30},
        {'text': 'wael4', 'score': 40}
      ]
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text(
          'Programing Language Quiz App',
          style: TextStyle(color: bodyColorWhite),
        ),
        actions: <Widget>[
          Switch(
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
                if (isSwitched) {
                  bodyColorWhite = Colors.black;
                  bodyColorBlack = Colors.white;
                } else {
                  bodyColorWhite = Colors.white;
                  bodyColorBlack = Colors.black;
                }
              });
            },
            activeColor: Colors.white,
            inactiveThumbColor: Colors.black,
            inactiveTrackColor: Colors.white,
          )
        ],
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
          color: bodyColorWhite,
          child: _questionIndex < _questions.length
              ? Quiz(_questions, _questionIndex, answerQuestion)
              : Result(_resetQuiz, _totalScore)),
    ));
  }
}
