import 'package:flutter/material.dart';
import '../Buttons/language_button.dart';

class QuestionPrompt extends StatefulWidget {
  final Map questionText;

  QuestionPrompt({required this.questionText});

  @override
  _QuestionPromptState createState() => _QuestionPromptState();
}

class _QuestionPromptState extends State<QuestionPrompt> {
  var _questionIndex = 0;

  // function to increase questionIndex for question iteration
  void answerLanguage(answr) {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex >= widget.questionText.length) {
      _questionIndex = 0;
    }
    print(answr);
    print(_questionIndex);
  }
  //conditionally getting the button for rendering

  Widget getWidget() {
    if (_questionIndex == 0) {
      return LanguageButton(
        questionText: widget.questionText,
        questionIndex: _questionIndex,
      );
    } else
      //Escape statement in case of error
      return ElevatedButton(
        onPressed: () {},
        child: Text('Error: No question available'),
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(1),
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(
            widget.questionText.keys.elementAt(_questionIndex),
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 17,
              color: Colors.amber.shade900,
            ),
          ),
          Row(
            children: (widget.questionText[
                    widget.questionText.keys.elementAt(_questionIndex)])
                .map<Widget>((answr) {
              return Container(
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: ElevatedButton(
                    onPressed: () => answerLanguage(answr),
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
