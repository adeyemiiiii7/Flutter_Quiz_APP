/// This code defines a `ResultsScreen` widget in Flutter that displays a list of chosen answers and
/// questions, along with a button to restart the quiz. The `chosenAnswers` parameter is passed into
/// the widget's constructor to display the list of answers. The widget is built using a `SizedBox` and
/// a `Container` with a `Column` of child widgets, including `Text` and `TextButton` widgets.
import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswers});
  //passing data into a widget, it must be passed in a constructor function method
  final List<String> chosenAnswers;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("wassup"),
            const SizedBox(
              height: 30,
            ),
            const Text("List of answers and questions.."),
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