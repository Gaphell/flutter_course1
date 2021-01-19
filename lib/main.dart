import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(AwesomeApp());
}

class AwesomeApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AwesomeAppState();
  }
}

class _AwesomeAppState extends State<AwesomeApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite animal?',
      'What\'s your favorite color?',
      'What\'s your age?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Awesome App'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
