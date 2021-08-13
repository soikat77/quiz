import 'package:flutter/material.dart';

import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    List<String> questions = [
      'What is your favorite color?',
      'What is your favorite animal',
      'What is your favorite food',
      'What is your favorite city',
      'What is your favorite man',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material Design'),
        ),
        body: Column(
          children: <Widget>[
            // Question will set here
            Question(questions[_questionIndex]),
            // Answer will set here
            ElevatedButton(
              child: Text('Answer 1'),
              onPressed: _answerQuestion,
            ),
            ElevatedButton(
              child: Text('Answer 2'),
              onPressed: _answerQuestion,
            ),
            ElevatedButton(
              child: Text('Answer 3'),
              onPressed: _answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
