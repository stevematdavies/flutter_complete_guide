import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';
import 'package:flutter_complete_guide/question.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() => _questionIndex < 3 ? _questionIndex++ : _questionIndex = 0);
  }

  @override
  build(BuildContext context) {
    final questions = [
      {
        "questionText": "What's your favorite Colour?",
        "answers": ["Red", "Blue", "Green"],
        "correctAnswer": "Blue"
      },
      {
        "questionText": "What's your favourite Animal?",
        "answers": ["Dog", "Horse", "Cat"],
        "correctAnswer": "Cat"
      },
      {
        "questionText": "Whats your favorite Dessert?",
        "answers": ["Cheesecake", "Ice Cream", "Custard"],
        "correctAnswer": "Cheesecake"
      },
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text("Quizz App")),
          body: Column(
            children: <Widget>[
              Question(questions[_questionIndex]['questionText'].toString()),
              ...(questions[_questionIndex]['answers'] as List<String>)
                  .map((a) => Answer(_answerQuestion, a)).toList(),
            ],
          )),
    );
  }
}

void main() => runApp(const MyApp());
