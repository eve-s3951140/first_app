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
      mainAxisSize: MainAxisSize.min, // Center the children vertically
      children: [
        Image.asset(
          activeDiceImage, // Set the image to the activeDiceImage
          width: 200,
        ),
        SizedBox(
          height: 20, 
          child: Text("You have rolled ${activeDiceImage.substring(activeDiceImage.indexOf("-") + 1, activeDiceImage.indexOf("."))}", 
            style: const TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
        const SizedBox(height: 30), // Add margin between text and button
        OutlinedButton(
          onPressed: rollDice, // Call the rollDice function when the button is pressed
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.all(20), // Add padding to the button on all sides
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 20),
            backgroundColor: const Color.fromARGB(191, 0, 149, 255),
            side: const BorderSide(color: Colors.white, width: 2), // Add a border to the button
          ),
          child: const Text("Roll Dice"),
        ),
      ],
    );
  }
}