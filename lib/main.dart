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
      'answers': [
        {'opt': 'Black', 'rank': 1},
        {'opt': 'Red', 'rank': 2},
        {'opt': 'Pink', 'rank': 3},
        {'opt': 'Blue', 'rank': 4},
      ],
    },
    {
      'questionText': 'What is your favorite animal?',
      'answers': [
        {'opt': 'Tiger', 'rank': 1},
        {'opt': 'Cat', 'rank': 2},
        {'opt': 'Lion', 'rank': 3},
        {'opt': 'Dog', 'rank': 4},
      ]
    },
    {
      'questionText': 'What is your favorite food?',
      'answers': [
        {'opt': 'Milk', 'rank': 1},
        {'opt': 'Vegetable', 'rank': 2},
        {'opt': 'Rice', 'rank': 3},
        {'opt': 'Meat', 'rank': 4},
      ],
    },
    {
      'questionText': 'What is your favorite city?',
      'answers': [
        {'opt': 'New York', 'rank': 1},
        {'opt': 'Dhaka', 'rank': 2},
        {'opt': 'London', 'rank': 3},
        {'opt': 'Dubai', 'rank': 4},
      ],
    },
    {
      'questionText': 'What is your favorite hero?',
      'answers': [
        {'opt': 'Brucely', 'rank': 1},
        {'opt': 'Spiderman', 'rank': 2},
        {'opt': 'Thor', 'rank': 3},
        {'opt': 'Wonder Woman', 'rank': 4},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalRank = 0;

  void _resetIndex() {
    setState(() {
      _questionIndex = 0;
      _totalRank = 0;
    });
  }

  void _answerQuestion(int rank) {
    _totalRank += rank;
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var _averageRank = _totalRank / _questions.length;
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
            : Result(_averageRank, _resetIndex),
      ),
    );
  }
}
