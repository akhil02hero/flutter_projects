import 'package:flutter/material.dart';

class AnswersButton extends StatelessWidget {
  const AnswersButton(this.text, this.checkAnswer, {Key? key})
      : super(key: key);
  final String text;
  final Function() checkAnswer;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: ElevatedButton(
          onPressed: checkAnswer,
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 80),
            foregroundColor: Colors.white,
            backgroundColor: Colors.deepPurple[700],
            textStyle: const TextStyle(
              fontSize: 16,
            ),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15))),
          ),
          child: Text(
            text,
            textAlign: TextAlign.center,
          )),
    );
  }
}
