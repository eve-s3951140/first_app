import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp( // Show user interface on the screen
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(29, 95, 119, 0),
        body: GradientContainer(),
      ),
    ),
  );
}

class GradientContainer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(152, 35, 35, 1),
            Color.fromRGBO(29, 95, 119, 1),
            Color.fromRGBO(7, 22, 89, 1),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: const Center(
        child: Text("Hello World", 
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
    );
  }
}