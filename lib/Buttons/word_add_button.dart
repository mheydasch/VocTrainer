import 'package:flutter/material.dart';

class WordAddButton extends StatelessWidget {
  final Map questionText;
  final int Index;
  final Function selectHandler;

  WordAddButton(
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
            Column(
              children: [
                Text('English'),
                TextField(),
                Text('German'),
                TextField()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
