import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeImageValue = 'assets/images/dice-1.png';

  void buttonPressed() {
    var diceRoll = Random().nextInt(6) + 1;
    setState(() {
      activeImageValue = 'assets/images/dice-$diceRoll.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeImageValue,
          width: 200,
        ),
        TextButton(
          onPressed: buttonPressed,
          style: TextButton.styleFrom(
              backgroundColor: Colors.red[900],
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28, wordSpacing: 6)),
          child: const Text("Button"),
        )
      ],
    );
  }
}
