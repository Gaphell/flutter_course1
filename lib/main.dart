import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

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
  var _totalScore = 0;
  var _questionIndex = 0;
  final _questions = const [
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Dog', 'score': 10},
        {'text': 'Cat', 'score': 30},
        {'text': 'Cow', 'score': 20},
        {'text': 'Bat', 'score': 50}
      ],
    },
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 40},
        {'text': 'Red', 'score': 30},
        {'text': 'Green', 'score': 10},
        {'text': 'White', 'score': 20}
      ],
    },
    {
      'questionText': 'What\'s your favorite food?',
      'answers': [
        {'text': 'Pizza', 'score': 40},
        {'text': 'Burger', 'score': 30},
        {'text': 'Rice', 'score': 20},
        {'text': 'Steak', 'score': 10},
      ],
    }
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Awesome App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
