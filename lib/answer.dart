import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final VoidCallback callback;
  final String answerText;

  // ignore: use_key_in_widget_constructors
  const Answer(this.callback, this.answerText);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: callback,
          style: ElevatedButton.styleFrom(
            primary: Colors.blue,
            textStyle: const TextStyle(
              color: Colors.white,
            )
          ),
          child: Text(answerText),
        ),
    );
  }
} 