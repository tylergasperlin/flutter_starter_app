import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex});

  String _getQuestion(int _questionIndex) {
    var quest = questions[_questionIndex];
    return quest['question'] as String;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(_getQuestion(questionIndex), questionIndex + 1),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => answerQuestion(answer['score']), answer['text'] as String);
        }).toList()
      ],
    );
  }
}
