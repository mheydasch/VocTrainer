import 'package:flutter/material.dart';

class QuestionPrompt extends StatelessWidget {
  final Map questionText;

  QuestionPrompt({required this.questionText});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(
            questionText.keys.first,
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 17,
              color: Colors.amber.shade900,
            ),
          ),
          Row(
            children: (questionText['Language?']).map<Widget>((answr) {
              return Container(
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(answr),
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(1),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
