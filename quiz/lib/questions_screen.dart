import 'package:flutter/material.dart';
import 'package:quiz/answers_button.dart';
import 'package:quiz/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen(this.chooseAnswers,{super.key});
  final void Function(int id, String answer, bool correctAnswer,
      String question, String crctAnswer) chooseAnswers;
  
  // const QuestionScreen(this.switchScreen, {super.key});
  // final void Function() switchScreen;

  @override
  State<StatefulWidget> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currIndex = 0;

  @override
  Widget build(BuildContext context) {
    final currQuestion = questions[currIndex];
    return Center(
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currQuestion.question,
              style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currQuestion.answers.map((element) => AnswersButton(element, () {
                  final bool correctAnswer =
                      element == questions[currIndex].correctAnswer;
                  widget.chooseAnswers(
                      currIndex,
                      element,
                      correctAnswer,
                      currQuestion.question,
                      questions[currIndex].correctAnswer);
                  setState(() {
                    currIndex++;
                  });
                })),
          ],
        ),
      ),
    );
  }
}


// this code is to redirect to the previous screen
          // OutlinedButton.icon(
          //   onPressed: widget.switchScreen,
          //   icon: const Icon(Icons.keyboard_double_arrow_left_sharp),
          //   label: const Text('Back'),
          //   style: OutlinedButton.styleFrom(
          //     foregroundColor: Colors.white,
          //   ),
          // ),