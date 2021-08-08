import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../languages/classes.dart';

class WordList extends StatelessWidget {
  final List words;

  WordList(this.words);

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
                children: words.map((wrds) {
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




/* class WordList extends StatelessWidget {
  final List words;

  WordList(this.words);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: words.map((wrds) {
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
                  children: (wrds[wrds.keys.first]).map((lng) {
                    return Container(
                      child: Text(
                        lng.meaning,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.amber.shade900,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
 */