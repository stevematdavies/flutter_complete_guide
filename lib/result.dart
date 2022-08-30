import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  const Result(this.resultScore, {Key? key}) : super(key: key);

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
      child: Text(
        resultText,
        style: const TextStyle(
          fontSize: 38,
          fontWeight: FontWeight.bold,
          color: Colors.greenAccent,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
