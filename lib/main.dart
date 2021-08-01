import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print("Answer Choosen!");
  }

  @override
  Widget build(BuildContext context) {
    List<String> questions = [
      'What is your favorite color?',
      'What is your favorite animal',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material Design'),
        ),
        body: Column(
          children: <Widget>[
            // Question will set here
            Text(questions[0]),
            // Answer will set here
            ElevatedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            ElevatedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer 2'),
            ),
            ElevatedButton(
              child: Text('Answer 3'),
              onPressed: () {
                print('Answer 3');
              },
            ),
          ],
        ),
      ),
    );
  }
}
