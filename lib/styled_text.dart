import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Hello World",
        style: TextStyle(fontSize: 30, color: Colors.white),
      ),
    );
  }
}
