import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuiz;
  const Result(this.resultScore, this.resetQuiz, {Key? key}) : super(key: key);

  String get resultText {
    var base = "You did it! ";
    if (resultScore <= 8) {
      base += "You are awsome and innocent!";
    } else if (resultScore <= 12) {
      base += "You are pretty likeable!";
    } else if (resultScore <= 16) {
      base += "You are...strange!";
    } else {
      base += "You are so bad!";
    }
    return base;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultText,
            style: const TextStyle(
              fontSize: 38,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          OutlinedButton(
              onPressed: resetQuiz,
              child: const Text(
                "Restart Quiz",
                style: TextStyle(color: Colors.blue),

              )),
        ],
      ),
    );
  }
}
