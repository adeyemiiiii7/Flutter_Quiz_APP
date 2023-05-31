/// This code defines a `ResultsScreen` widget in Flutter that displays a list of chosen answers and
/// questions, along with a button to restart the quiz. The `chosenAnswers` parameter is passed into
/// the widget's constructor to display the list of answers. The widget is built using a `SizedBox` and
/// a `Container` with a `Column` of child widgets, including `Text` and `TextButton` widgets.
import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summer.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswers});
  //passing data into a widget, it must be passed in a constructor function method
  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          //keys
          'question_index': i,
          //questions[i].text stores the questions answers and text
          'questions': questions[i].text,
          //we create a correct_answers map that will store the current questions and
          //the correct answer is the first option in each question
          'correct_answer': questions[i].answers[0],
          'user_answer': chosenAnswers[i],
        },
      );
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = 0;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("wassup"),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(summaryData: getSummaryData()),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "Restart quiz",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
