import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
    const questions = [
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

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material Design'),
          backgroundColor: Colors.purple,
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              // Question will set here
              Question(
                questions[_questionIndex]['questionText'] as String,
              ),
              // Answer will set here
              ...(questions[_questionIndex]['answers'] as List<String>)
                  .map((answer) {
                return Answer(_answerQuestion, answer);
              }).toList()
              // Answer(_answerQuestion),
              // Answer(_answerQuestion),
              // Answer(_answerQuestion),
              // Answer(_answerQuestion),
            ],
          ),
        ),
      ),
    );
  }
}
