import 'package:flutter/material.dart';

class CorrectAnswer extends StatelessWidget {
  const CorrectAnswer(
      this.id, this.answer, this.isCorrect, this.question, this.correctAnswer,
      {Key? key})
      : super(key: key);
  final int id;
  final String answer;
  final bool isCorrect;
  final String question;
  final String correctAnswer;

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      width: 360,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: isCorrect
                    ? const Color.fromARGB(255, 34, 115, 76)
                    : Colors.red[800]),
            child: Icon(
              isCorrect ? Icons.check : Icons.close,
              color: const Color.fromARGB(255, 219, 193, 193),
              size: 30,
            ),
          ),
          Expanded(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 360,
                  padding: const EdgeInsets.fromLTRB(15,0,0,0),
                  child: Text(
                    '${id + 1}.) $question',
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                SizedBox(
                  width: 300,
                  child: Text(
                    'Correct Answer : $correctAnswer',
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 28, 254, 145),
                        fontSize: 14,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                SizedBox(
                  width:300,
                  child: Text(
                    'Selected Answer : $answer',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: isCorrect
                            ? const Color.fromARGB(255, 28, 254, 145)
                            : Colors.amber,
                        fontSize: 14,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
