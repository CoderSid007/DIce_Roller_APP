import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  // ignore: no_logic_in_create_state
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  
  var currntDiceRoll = 2;

  void rollDice() {
    setState(() {
      currntDiceRoll = randomizer.nextInt(6) + 1;
    });

    print('Changing Image .......');
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currntDiceRoll.png',
          width: 300,
        ),
        const SizedBox(height: 20),
        ElevatedButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 245, 245, 245),
              padding: const EdgeInsets.all(4),
              foregroundColor: const Color.fromARGB(250, 11, 0, 0),
              textStyle: const TextStyle(fontStyle: FontStyle.normal 
              ,fontSize: 30
              ),
            ),
            child: const Text('Roll Dice'))
      ],
    );
  }
}
