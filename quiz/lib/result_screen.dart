import 'package:flutter/material.dart';
import 'package:quiz/correct_answer.dart';
import 'package:quiz/models/answered_details.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      this.returnHomeScreen, this.selectedAnswers, this.returnToQuestionScreen,
      {Key? key})
      : super(key: key);
  final void Function() returnHomeScreen;
  final void Function() returnToQuestionScreen;
  final List<AnsweredDetail> selectedAnswers;

  @override
  Widget build(BuildContext context) {
    var questionsAnsweredCorrect = 0;
    // selectedAnswers.map((el){
    //   if(el.isCorrect){
    //     questionsAnsweredCorrect++;
    //   }
    //  });
    questionsAnsweredCorrect =
        selectedAnswers.where((el) => el.isCorrect).length;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Results",
            style: TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 415,
            height: 600,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...selectedAnswers.map((e) => CorrectAnswer(
                      e.id,
                      e.answeredAnswer,
                      e.isCorrect,
                      e.question,
                      e.correctAnswer))
                ],
              ),
            ),
          ),
          if (questionsAnsweredCorrect < 4)
            OutlinedButton.icon(
                onPressed: returnToQuestionScreen,
                icon: const Icon(
                  Icons.loop,
                  color: Colors.white,
                ),
                label: const Text(
                  "Retry",
                  style: TextStyle(color: Colors.white),
                )),
          OutlinedButton.icon(
              onPressed: returnHomeScreen,
              icon: const Icon(
                Icons.keyboard_double_arrow_left,
                color: Colors.white,
              ),
              label: const Text(
                "Home",
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}
