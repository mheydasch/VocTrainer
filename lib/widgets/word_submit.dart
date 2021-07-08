import 'package:flutter/material.dart';

import '../languages/classes.dart';
import './wordlist.dart';

class WordSubmit extends StatefulWidget {
  @override
  _WordSubmitState createState() => _WordSubmitState();
}

/* class _WordSubmitState extends State<WordSubmit> {
  final List<German> _userWords = [
    German(
      meaning: 'Hund',
      article: 'der',
      plural: 'Hunde',
      date: DateTime.now(),
      id: DateTime.now().toString(),
      type: 'Noun',
    ),
  ]; */

class _WordSubmitState extends State<WordSubmit> {
  final List<Map<String, List<Object>>> _userWords = [
    {
      DateTime.now().toString(): [
        English(
          meaning: 'Dog',
          date: DateTime.now(),
          type: 'Noun',
          id: DateTime.now().toString(),
        ),
        German(
          meaning: 'Hund',
          article: 'der',
          plural: 'Hunde',
          date: DateTime.now(),
          id: DateTime.now().toString(),
          type: 'Noun',
        ),
      ],
    },
    {
      DateTime.now().toString(): [
        English(
          meaning: 'Cat',
          date: DateTime.now(),
          type: 'Noun',
          id: DateTime.now().toString(),
        ),
        German(
          meaning: 'Katze',
          article: 'die',
          plural: 'Katzen',
          date: DateTime.now(),
          id: DateTime.now().toString(),
          type: 'Noun',
        ),
      ],
    } //map
  ];

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        WordList(_userWords),
      ],
    );
  }
}
