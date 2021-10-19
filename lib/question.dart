import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // final means you cannot reassign
  final String questionText;
  final int questionNumber;

  Question(this.questionText, this.questionNumber);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Text(
          questionNumber.toString() + '. ' + questionText,
          style: TextStyle(fontSize: 28),
          textAlign: TextAlign.center,
        ));
  }
}
