import 'package:flutter/material.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/models/answered_details.dart';
import 'package:quiz/questions_screen.dart';
import 'package:quiz/result_screen.dart';
import 'package:quiz/start_screen.dart';

class Quiz extends StatefulWidget {
  Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizSate();
  }
}

class _QuizSate extends State<Quiz> {
  // Widget? activeScreen;

  Widget? activeScreen;

  List<AnsweredDetail> selectedAnswers = [];
  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = QuestionScreen(chooseAnswers);
    });
  }

  void returnHomeScreen() {
    setState(() {
      activeScreen=StartScreen(switchScreen);
      selectedAnswers=[];
    });
  }

  void chooseAnswers(int id,String answer, bool correctAnswer,String question,String crctAnswer) {
    selectedAnswers.add(AnsweredDetail(id,answer, correctAnswer,question,crctAnswer));
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = ResultScreen(returnHomeScreen,selectedAnswers);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.deepPurple, Colors.deepPurpleAccent],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              color: Colors.white),
          child: activeScreen,
        ),
      ),
    );
  }
}
