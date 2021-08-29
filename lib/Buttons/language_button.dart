import 'package:flutter/material.dart';

class LanguageButton extends StatelessWidget {
  final Map questionText;
  final int Index;
  final Function selectHandler;

  LanguageButton(
      {required this.questionText,
      required this.Index,
      required this.selectHandler});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(
            questionText.keys.elementAt(Index),
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 17,
              color: Colors.amber.shade900,
            ),
          ),
          Row(
            children: (questionText[questionText.keys.elementAt(Index)])
                .map<Widget>((answr) {
              return Container(
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: ElevatedButton(
                    onPressed: () => selectHandler(answr),
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
