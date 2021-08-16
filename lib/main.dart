import 'package:flutter/material.dart';
import 'package:quiz/quiz.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What is your favorite color?',
      'answers': ['Black', 'Red', 'Pink', 'Blue'],
    },
    {
      'questionText': 'What is your favorite animal?',
      'answers': ['Tiger', 'Cat', 'Lion', 'Dog'],
    },
    {
      'questionText': 'What is your favorite food?',
      'answers': ['Rice', 'Milk', 'Meat', 'Vegetable'],
    },
    {
      'questionText': 'What is your favorite city?',
      'answers': ['Dhaka', 'New York', 'London', 'Dubai'],
    },
    {
      'questionText': 'What is your favorite hero?',
      'answers': ['Spiderman', 'Thor', 'Wonder Woman', 'Brucely'],
    },
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material Design'),
          backgroundColor: Colors.purple,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(),
      ),
    );
  }
}
