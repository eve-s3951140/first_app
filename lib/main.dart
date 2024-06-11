import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      // Show user interface on the screen
      home: Scaffold(
        backgroundColor:  Color.fromRGBO(14, 49, 61, 0),
        body: GradientContainer(colors: [
            Color.fromRGBO(152, 35, 35, 1),
            Color.fromRGBO(29, 95, 119, 1),
            Color.fromRGBO(0, 0, 0, 1)
        ]),
      ),
    ),
  );
}
