import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // final means you cannot reassign
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}
