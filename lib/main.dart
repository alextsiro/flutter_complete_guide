import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//class MyApp extends StatelessWidget {
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      home: Scaffold(
//        appBar: AppBar(title: Text("hello",), centerTitle: true),
//        body: Text('Hello'),
//      ),
//   );
////  }
//}

class MyApp extends StatelessWidget {
  int questionIndex = 0;

  void answerQuestion() {
    questionIndex = questionIndex + 1;
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    final questions = [
      'What\'s your favorite color?',
      'what\'s your favorite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text(
              "hello",
            ),
            centerTitle: true),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            Row(
              children: [
                Center(
                  child: ElevatedButton(
                    child: Text('answer1'),
                    onPressed: answerQuestion,
                  ),
                ),
              ],
            ),
            ElevatedButton(
              child: Text('answer2'),
              onPressed: answerQuestion,
            ),
            ElevatedButton(
              child: Text('answer3'),
              onPressed: answerQuestion,
            ),
            ListTile(
              trailing: Text("bvhgfghf"),
              onTap: () {
                questions = [];
              },
            )
          ],
        ),
      ),
    );
  }
}
