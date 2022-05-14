import 'package:flutter/material.dart';

main() {
  runApp(const QuestionApp());
}

class QuestionApp extends StatelessWidget {
  const QuestionApp({Key? key}) : super(key: key);

  var selectedQuestion = 0;

  void answer() {
    selectedQuestion++;
    print(selectedQuestion);
  }

  @override
  Widget build(BuildContext context) {
    final questions = [
      "What's your favorite color?",
      "What's your favorite animal?",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Questions'),
        ),
        body: Column(
          children: <Widget>[
            Text(questions[0]),
            ElevatedButton(
              onPressed: answer,
              child: const Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: answer,
              child: const Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: answer,
              child: const Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}
