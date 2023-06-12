/// The Quiz class is a stateful widget that manages the flow of the quiz app by switching between the
/// start screen, question screen, and results screen based on user interactions.
import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // this is a map list function that will collect all the selected answers and store in in the selectedAnswers location in memory
  //final List<String> selectedAnswers = [];
  //removing the final cause we want a user to be able to re-attempt the quiz after a previous attempt.
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';
//displays the question screen widget after you click the start quiz button
  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

//this function holds all the slected answers together
  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget;

    if (activeScreen == 'question-screen') {
      screenWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
      );
    } else {
      screenWidget = StartScreen(
        onStartQuiz: switchScreen,
      );
    }
    if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(
        chosenAnswers: selectedAnswers,
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 211, 207, 216),
                Color.fromARGB(255, 146, 143, 149),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget, 
        ),
      ),
    );
  }
}
