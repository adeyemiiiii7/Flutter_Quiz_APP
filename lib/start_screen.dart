import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.onStartQuiz, {Key? key});

  final VoidCallback onStartQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Opacity(
          opacity: 0.1,
          child: Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
          ),
        ),
        const SizedBox(height: 80),
        const Text(
          "Learn Flutter!",
          style: TextStyle(
            fontSize: 28,
          ),
        ),
        const SizedBox(height: 30),
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
