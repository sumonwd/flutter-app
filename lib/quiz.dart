import 'package:flutter/material.dart';
import 'package:test/answer.dart';
import 'package:test/question.dart';

class Quiz extends StatelessWidget {
  final questions;
  final questionIndex;
  final answerQuestion;
  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          (questions[questionIndex]['questionText'] as String),
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((ans) {
          return Answer(
              () => answerQuestion(ans['score']), (ans['text'] as String));
        }).toList()
      ],
    );
  }
}
