import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/result.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  final _questions = const [
    {
      "questionText": "What's your favorite Colour?",
      "answers": [
        {"text": "Red", "score": 10},
        {"text": "Blue", "score": 5},
        {"text": "Green", "score": 100},
      ],
      "correctAnswer": "Blue"
    },
    {
      "questionText": "What's your favourite Animal?",
      "answers": [
        {"text": "Dog", "score": 10},
        {"text": "Horse", "score": 5},
        {"text": "Cat", "score": 2},
      ],
      "correctAnswer": "Cat"
    },
    {
      "questionText": "Whats your favorite Dessert?",
      "answers": [
        {"text": "Cheesecake", "score": 2},
        {"text": "Ice Cream", "score": 25},
        {"text": "Custard", "score": 5}
      ],
      "correctAnswer": "Cheesecake"
    },
  ];

  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() => _questionIndex += 1);
  }

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  @override
  build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Quizz App")),
        body: _questionIndex < _questions.length
            ? Quiz(_questions, _questionIndex, _answerQuestion)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}

void main() => runApp(const MyApp());
