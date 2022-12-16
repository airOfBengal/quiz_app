import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/result.dart';

void main() => runApp(MyWidget());

class MyWidget extends StatefulWidget {
  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  var _questionIndex = 0;

  final _questions = const [
    {
      'question': "What's your favorite color?",
      'answers': ['Red', 'Blue', 'Green', 'White'],
    },
    {
      'question': "What's your favorite animal?",
      'answers': ['Tiger', 'Lion', 'Elephant', 'Horse'],
    },
    {
      'question': "Who's your favorite instructor?",
      'answers': ['Atiq', 'Rony', 'Ripu', 'Ron'],
    }
  ];

  void _answerQuestion() {
    print(_questionIndex);
    setState(() {
      _questionIndex = (_questionIndex + 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion)
            : Result(),
      ),
    );
  }
}
