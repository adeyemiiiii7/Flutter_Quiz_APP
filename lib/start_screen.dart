import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.onStartQuiz, {super.key, Key? ke});

  // Declare a final variable of type VoidCallback which will be called when the start quiz button is pressed
  final VoidCallback onStartQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Add a quiz logo image to the center of the screen with reduced opacity
        Opacity(
          opacity: 0.1,
          child: Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
          ),
        ),
        const SizedBox(height: 80),
        // Add a text "Learn Flutter!" to the center of the screen with font size 28
        const Text(
          "Learn Flutter!",
          style: TextStyle(
            fontSize: 28,
          ),
        ),
        const SizedBox(height: 30),
        // Add a button with arrow icon and text "Start Quiz" which calls onStartQuiz function when pressed
        OutlinedButton.icon(
          onPressed: onStartQuiz,
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
          ),
          icon: const Icon(Icons.arrow_forward_sharp),
          label: const Text('Start Quiz'),
        )
      ],
    ));
  }
}
