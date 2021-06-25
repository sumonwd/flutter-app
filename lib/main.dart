import 'package:flutter/material.dart';
import 'package:test/answer.dart';
import 'package:test/question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final questions = const [
    {
      'questionText': 'Whats your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': ['Sumon', 'Khan', 'Max', 'Ton'],
    },
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < questions.length) {
      print("we have more");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Question(
                    (questions[_questionIndex]['questionText'] as String),
                  ),
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((ans) {
                    return Answer(_answerQuestion, ans);
                  }).toList()
                ],
              )
            : Center(
                child: Text("You did all!"),
              ),
      ),
    );
  }
}
