import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    var resultText = 'all done no more questions';
    if (resultScore <= 100) {
      resultText = 'You awesome';
    } else if (resultScore <= 200) {
      resultText = 'Likable only';
    } else if (resultScore <= 500) {
      resultText = 'You strange';
    } else {
      resultText = 'you Nasty';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      resultPhrase,
      style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    ));
  }
}
