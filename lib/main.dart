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
  var _totalScore = 0;

  final _questions = const [
    {
      'question': "What's your favorite color?",
      'answers': [
        {'text': 'Red', 'score': 1},
        {'text': 'Blue', 'score': 2},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 4}
      ],
    },
    {
      'question': "What's your favorite animal?",
      'answers': [
        {'text': 'Tiger', 'score': 1},
        {'text': 'Lion', 'score': 2},
        {'text': 'Elephant', 'score': 3},
        {'text': 'Horse', 'score': 4}
      ],
    },
    {
      'question': "Who's your favorite instructor?",
      'answers': [
        {'text': 'Atiq', 'score': 1},
        {'text': 'Rony', 'score': 2},
        {'text': 'Ripu', 'score': 3},
        {'text': 'Ron', 'score': 4}
      ],
    }
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = (_questionIndex + 1);
    });
  }

  void _restartQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
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
            : Result(_totalScore, _restartQuiz),
      ),
    );
  }
}
