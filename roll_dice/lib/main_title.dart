import 'package:flutter/material.dart';

class MainTitle extends StatelessWidget {
  final String title;

  const MainTitle(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 32,
      ),
    );
  }
}
