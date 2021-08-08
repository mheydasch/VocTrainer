import 'package:flutter/material.dart';

import './widgets/word_submit.dart';
import './languages/classes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VocTrainer',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Map<String, List<Word>>> _userWords = [
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('VocTrainer')),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Container(
            height: 300,
            child: SingleChildScrollView(
              child: Column(
                children: _userWords.map((wrds) {
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
                        children: (wrds[wrds.keys.first]!).map((lng) {
                          return Row(children: [
                            Text(
                              lng.runtimeType.toString() + ': ',
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 17,
                                color: Colors.amber.shade900,
                              ),
                            ),
                            Text(
                              lng.meaning,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Colors.amber.shade900,
                              ),
                            ),
                          ]);
                        }).toList(),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

/* import 'package:flutter/material.dart';

import './widgets/word_submit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VocTrainer',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('VocTrainer')),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          WordSubmit(),
        ]),
      ),
    );
  }
} */

/* import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

abstract class Word {
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

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Map<String, List<Word>>> _userWords = [
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          child: SingleChildScrollView(
            child: Column(
              //iterating through the outer list, creating one card for each word
              //wrds represents each outer map (key=DateTime)
              children: _userWords.map((wrds) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width / 2,
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: (wrds[wrds.keys.first]!).map((lng) {
                            return Card(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  lng.meaning,
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
} */