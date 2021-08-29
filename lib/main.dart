import 'package:flutter/material.dart';

//import './widgets/word_submit.dart';
import './languages/classes.dart';
import './widgets/question_prompt.dart';

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
          primarySwatch: Colors.amber),
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

  var _questionList = {
    'Language?': ['German', 'English'],
    'Meaning?': []
  };

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
                //returns one card for each word in the user map
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
                        //returns one row for each language the word has
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
          QuestionPrompt(questionText: _questionList),
        ]),
      ),
    );
  }
}
