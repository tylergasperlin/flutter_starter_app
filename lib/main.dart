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
      'answers': ['White', 'green', 'pink', 'blue']
    },
    {
      'question': 'What\'s your favorite animal?',
      'answers': ['Pig', 'Marsupial', 'Ant', 'Moose']
    },
    {
      'question': 'What\'s your favorite tyler?',
      'answers': ['tyler', 'Tyler', 'tylr', 'tylerr']
    }
  ];

  // underscore means private property
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
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
                : Result()));
  }
}
