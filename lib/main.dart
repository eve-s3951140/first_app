import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      // Show user interface on the screen
      home: Scaffold(
        backgroundColor: Color.fromRGBO(29, 95, 119, 0),
        body: GradientContainer(),
      ),
    ),
  );
}
