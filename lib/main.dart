import 'package:flutter/material.dart';

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
  // underscore means private property
  var _questionIndex = 0;

  var questions = [
    'What\'s your favorite color?',
    'What\'s your favorite animal?',
  ];

  void _answerQuestion() {
    setState(() {
      if (_questionIndex < (questions.length - 1)) {
        _questionIndex = _questionIndex + 1;
      } else {
        print('No more questions');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('This best app'),
      ),
      body: Column(
        children: <Widget>[
          Question(questions[_questionIndex], _questionIndex + 1),
          Answer(_answerQuestion),
          Answer(_answerQuestion),
          Answer(_answerQuestion),
        ],
      ),
    ));
  }
}
