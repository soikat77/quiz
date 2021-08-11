import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex += 1;
    });
    print(questionIndex);
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
            Text(questions[questionIndex]),
            // Answer will set here
            ElevatedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            ElevatedButton(
              child: Text('Answer 2'),
              onPressed: answerQuestion,
            ),
            ElevatedButton(
              child: Text('Answer 3'),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
