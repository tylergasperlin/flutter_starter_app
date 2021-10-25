import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/result.dart';

import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

// In a staful widget state is kept outside the widget so when the stateful widget rerenders it keeps state
// underscore in dart is a private class
class _MyAppState extends State<MyApp> {
  // in dart const = compile time constant. You could also use final
  // final is runtime constant
  final _questions = const [
    {
      'question': 'What\'s your favorite color?',
      'answers': [
        {'text': 'White', 'score': 10},
        {'text': 'green', 'score': 32},
        {'text': 'pink', 'score': 121},
        {'text': 'blue', 'score': 4}
      ]
    },
    {
      'question': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Pig', 'score': 123},
        {'text': 'Marsupial', 'score': 5},
        {'text': 'Ant', 'score': 12},
        {'text': 'Moose', 'score': 6}
      ]
    },
    {
      'question': 'What\'s your favorite tyler?',
      'answers': [
        {'text': 'tyler', 'score': 555},
        {'text': 'Tyler', 'score': 15},
        {'text': 'tylr', 'score': 41},
        {'text': 'tylerr', 'score': 221}
      ]
    }
  ];

  // underscore means private property
  var _questionIndex = 0;
  var _totalscore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalscore = 0;
    });
  }

  void _answerQuestion(int score) {
    // += same as _totalscore + 1

    _totalscore += score;

    setState(() {
      // += same as _questionIndex + 1
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('This best app'),
            ),
            body: _questionIndex < _questions.length
                ? Quiz(
                    answerQuestion: _answerQuestion,
                    questions: _questions,
                    questionIndex: _questionIndex)
                : Result(_totalscore, _resetQuiz)));
  }
}
