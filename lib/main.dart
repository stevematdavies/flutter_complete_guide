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

  final questions = const [
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

  void _answerQuestion() {
    setState(() => {
          if (_questionIndex < questions.length) {_questionIndex += 1}
        });
  }

  @override
  build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Quizz App")),
        body: _questionIndex < questions.length
            ? Column(
                children: <Widget>[
                  Question(questions[_questionIndex]['questionText'] as String),
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((a) => Answer(_answerQuestion, a))
                      .toList(),
                ],
              )
            : const Center(
                child: Text("You did it!"),
              ),
      ),
    );
  }
}

void main() => runApp(const MyApp());
