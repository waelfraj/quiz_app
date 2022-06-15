// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'main.dart';

// ignore: use_key_in_widget_constructors
class Result extends StatelessWidget {
  final Function() q;
  final int resultScore;

  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  Result(this.q, this.resultScore);

  String get resultPhrase {
    String resultText;
    if (resultScore >= 70) {
      resultText = "You are awesome !";
    } else if (resultScore >= 40) {
      resultText = "Pretty likable !";
    } else {
      resultText = "You are so bad !";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Done !",
            style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: bodyColorBlack),
          ),
          Text(
            "Your Score is $resultScore",
            style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: bodyColorBlack),
          ),
          Text(
            resultPhrase,
            style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: bodyColorBlack),
          ),
          FlatButton(
            // ignore: sort_child_properties_last
            child: Text("Restart the app",
                style: TextStyle(color: Colors.blue, fontSize: 30)),
            onPressed: q,
          ),
        ],
      ),
    );
  }
}
