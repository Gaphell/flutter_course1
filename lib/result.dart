import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function handler;

  Result(this.score, this.handler);

  String get result {
    return 'The final score is ' + score.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            result,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: handler,
            child: Text('Restart'),
            textColor: Colors.redAccent,
          ),
        ],
      ),
    );
  }
}
