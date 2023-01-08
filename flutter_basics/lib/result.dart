import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuiz;

  Result({
    required this.resultScore,
    required this.resetQuiz,
  });

  String get resultPhrase {
    return resultScore >= 29
        ? 'You have a good taste!'
        : 'We cannot be friends 👍';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: resetQuiz,
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.indigo),
            ),
            child: const Text(
              'Reset quiz',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
