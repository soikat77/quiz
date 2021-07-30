import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material Design'),
        ),
        body: Column(
          children: [
            Text('Question 1'),
            ElevatedButton(
              onPressed: null,
              child: Text('Elevated Button'),
            ),
          ],
        ),
      ),
    );
  }
}
