import 'package:flutter/material.dart';
import 'package:flutter_basics/answer.dart';
import 'package:flutter_basics/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    required this.questions,
    required this.questionIndex,
    required this.answerQuestion,
  });

  List _answers() {
    return questions[questionIndex]['answers'] as List;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText'] as String),
        ..._answers().map((answer) {
          return Answer(
            () => answerQuestion(answer['score']),
            answer['text'],
          );
        }),
      ],
    );
  }
}
