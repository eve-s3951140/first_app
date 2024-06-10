import 'package:flutter/material.dart';
import 'package:first_app/styled_text.dart';

var startAlignment = Alignment.topCenter;
var endAlignment = Alignment.bottomCenter;

var colors = [
  const Color.fromRGBO(152, 35, 35, 1),
  const Color.fromRGBO(29, 95, 119, 1),
  const Color.fromRGBO(7, 22, 89, 1)
];

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: StyledText("Hello World!"),
      ),
    );
  }
}
