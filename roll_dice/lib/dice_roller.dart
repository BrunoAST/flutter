import 'dart:math';

import 'package:flutter/material.dart';

import 'constants/assets_constants.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  final randomizer = Random();
  int diceNumber = 1;

  void rollDice() {
    setState(() {
      diceNumber = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          AssetsConstants.getAsset(diceNumber),
          width: 200,
        ),
        // Adds space between the elements
        const SizedBox(
          height: 20,
        ),
        TextButton(
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(top: 20),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          onPressed: rollDice,
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
