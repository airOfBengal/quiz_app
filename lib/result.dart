import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function restartQuiz;

  Result(this.totalScore, this.restartQuiz);

  String get resultText {
    var msg = 'You did it!!';
    if (totalScore <= 4) {
      msg = "You're awsome and innocent!";
    } else if (totalScore <= 8) {
      msg = "You're good!";
    } else {
      msg = "You're strange!!!";
    }
    return msg;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultText,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          TextButton(
              onPressed: restartQuiz,
              child: Text(
                'Restart Quiz',
                style: TextStyle(color: Colors.blue),
              ))
        ],
      ),
    );
  }
}
