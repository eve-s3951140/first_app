import 'dart:math';
import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  var activeDiceImage = "assets/images/dice-2.png";
  final diceImages = [
    "assets/images/dice-1.png",
    "assets/images/dice-2.png",
    "assets/images/dice-3.png",
    "assets/images/dice-4.png",
    "assets/images/dice-5.png",
    "assets/images/dice-6.png",
  ];

  void rollDice() {
    // Generate a random number between 0 and 5
    var randomDiceNumber = Random().nextInt(6);

    if (activeDiceImage == diceImages[randomDiceNumber]) {
      // If the same image is rolled, roll the dice again
      rollDice();
      return;
    }

    // Render the new dice image
    setState(() {
      activeDiceImage = diceImages[randomDiceNumber];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              padding: const EdgeInsets.only(top: 10),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 20)),
          child: const Text("Roll Dice"),
        ),
      ],
    );
  }
}