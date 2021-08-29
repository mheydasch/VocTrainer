import 'package:flutter/material.dart';
import '../Buttons/language_button.dart';
import '../Buttons/word_add_button.dart';

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

  //cnditionally getting the button for rendering
  Widget getWidget() {
    if (_questionIndex == 0) {
      return LanguageButton(
          questionText: widget.questionText,
          Index: _questionIndex,
          selectHandler: answerLanguage);
    } else if (_questionIndex == 1) {
      return WordAddButton(
          questionText: widget.questionText,
          Index: _questionIndex,
          selectHandler: answerLanguage);
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
    return getWidget();
  }
}
