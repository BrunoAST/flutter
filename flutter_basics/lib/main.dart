import 'package:flutter/material.dart';
import 'package:flutter_basics/quiz.dart';
import 'package:flutter_basics/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final _questions = const [
    {
      'questionText': 'What\'s your favorite music?',
      'answers': [
        {'text': 'In Bloom', 'score': 8},
        {'text': 'Stadium Arcadium', 'score': 10},
        {'text': 'Enter Sandman', 'score': 9},
      ],
    },
    {
      'questionText': 'What\'s your favorite game?',
      'answers': [
        {'text': 'Red Dead Redemption 2', 'score': 10},
        {'text': 'Mass Effect', 'score': 9},
        {'text': 'God of War', 'score': 10},
      ],
    },
    {
      'questionText': 'What\'s your favorite movie?',
      'answers': [
        {'text': 'Interstellar', 'score': 10},
        {'text': 'Run', 'score': 8},
        {'text': 'R.R.R', 'score': 9},
      ],
    },
  ];

  void _handleAnswer(int score) {
    _totalScore += score;
    setState(() => _questionIndex += 1);
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  bool hasAnsweredAllQuestions() => _questionIndex < _questions.length;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: hasAnsweredAllQuestions()
            ? Quiz(
                questions: _questions,
                answerQuestion: _handleAnswer,
                questionIndex: _questionIndex,
              )
            : Result(
                resultScore: _totalScore,
                resetQuiz: _resetQuiz,
              ),
      ),
    );
  }
}
