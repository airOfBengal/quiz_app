import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectFunction;
  final String answerText;

  Answer(this.selectFunction, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 10, right: 10),
      child: ElevatedButton(
        onPressed: selectFunction,
        child: Text(answerText),
      ),
    );
  }
}
