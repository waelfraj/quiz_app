// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'question.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void answerQuestion() {
    if(_questionIndex ==2){
      _questionIndex=-1;
    }
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
    print('your answer');
  }

  int _questionIndex = 0;
  final _questions = [
    'what\'s your favorite color?',
    'what\'s your favorite animal?',
    'what\'s your favorite Language?',
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Programing Language Quiz App'),
          ),
          body: Container(
            child: Column(
              children: <Widget>[
                Question(_questions[_questionIndex]),
                Answer(answerQuestion, 'answer 1 '),
                Answer(answerQuestion, 'answer 2'),
                Answer(answerQuestion, 'answer 3'),
              ],
            ),
          ),
        ));
  }
}
