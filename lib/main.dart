import 'package:flutter/material.dart';

import './question.dart';

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

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('This best app'),
      ),
      body: Column(
        children: <Widget>[
          Question(questions[_questionIndex]),
          RaisedButton(child: Text('ans1'), onPressed: _answerQuestion),
          RaisedButton(
              child: Text('ans2'), onPressed: () => print('ans2 chosen')),
          RaisedButton(
              child: Text('ans3'),
              onPressed: () {
                //goose
                print('ans 3 chosen');
              }),
        ],
      ),
    ));
  }
}
