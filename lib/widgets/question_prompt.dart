import 'package:flutter/material.dart';

class QuestionPrompt extends StatelessWidget {
  final String questionText;

  QuestionPrompt(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Text(
        questionText,
        style: TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 17,
          color: Colors.amber.shade900,
        ),
      ),
    );
  }
}
