// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Result extends StatelessWidget {
  final Function() q;

  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  Result(this.q);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            "Done !",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          FlatButton(
            // ignore: sort_child_properties_last
            child: Text("Restart the application",
                style: TextStyle(color: Colors.blue, fontSize: 30)),
            onPressed: q,
          ),
        ],
      ),
    );
  }
}
