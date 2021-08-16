import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final double resultRank;
  final void Function() resetQuiz;

  Result(this.resultRank, this.resetQuiz);

  String get greetings {
    var greetText = 'You are done!';
    if (resultRank < 2) {
      greetText = 'You are awesome! You did the best job.';
    } else if (resultRank < 3) {
      greetText = 'Welldone my boy. Almost there.';
    } else if (resultRank < 4) {
      greetText = 'Nice try man. Good luck next time.';
    } else {
      greetText = 'Far away.....';
    }
    return greetText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Text(
              greetings,
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextButton(
              onPressed: resetQuiz,
              child: Text('Restart'),
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.teal,
                onSurface: Colors.grey,
              ),
            )
          ],
        ),
      ),
    );
  }
}
