import 'package:flutter/material.dart';
import 'package:roll_a_dice/gradient_container.dart';

void main() {

  final List<Color> colors = [Colors.amberAccent,Colors.red,Colors.deepOrange];

  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(colors),
      ),
    ),
  );
}
