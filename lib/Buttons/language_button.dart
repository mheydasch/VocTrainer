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
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.amber.shade800,
            width: 5,
          ),
        ),
        padding: EdgeInsets.all(10),
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
              //iterating through each element of the input map to generate one button for each answer possibility
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
      ),
    );
  }
}
