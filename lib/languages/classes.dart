import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/* abstract class Word {
  final String meaning;
  final DateTime date;
  String? article;
  String? plural;
  final String type;
  final String id;

  Word(
    this.meaning,
    this.date,
    this.type,
    this.id,
    this.article,
    this.plural,
  );
}

class German extends Word {
  German({
    required String meaning,
    required DateTime date,
    required String type,
    required String id,
    String? article,
    String? plural,
  }) : super(meaning, date, type, id, article, plural);
}

class English extends Word {
  English({
    required String meaning,
    required DateTime date,
    required String type,
    required String id,
    String? article,
    String? plural,
  }) : super(meaning, date, type, id, article, plural);
}
 */

class English {
  final _properties = [
    {'articles': 'the'},
    //SubjectVerbObject
    {'structure': 'svo'},
  ];
  static String plural = 's';

  final String meaning;
  final DateTime date;
  final String id;
  final String type;

  English(
      {required this.meaning,
      required this.date,
      required this.id,
      required this.type});
}

class German {
  final String meaning;
  final String article;
  final String plural;
  final DateTime date;
  final String id;
  final String type;

  German({
    required this.meaning,
    required this.article,
    required this.plural,
    required this.date,
    required this.id,
    required this.type,
  });
}
