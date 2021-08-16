import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final double resultRank;

  Result(this.resultRank);

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
        child: Text(
          greetings,
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
