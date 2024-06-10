import 'package:flutter/material.dart';
// Gradient Container widget
class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

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
        child: Text(
          "Hello World",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
    );
  }
}
