import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    var resultText = 'all done no more questions';
    if (resultScore <= 300) {
      resultText = 'You awesome';
    } else if (resultScore <= 400) {
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
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetQuiz,
            child: Text('Restart'),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
