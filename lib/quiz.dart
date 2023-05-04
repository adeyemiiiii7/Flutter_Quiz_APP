import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
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
          )),
          child: StartScreen(), // use the StartScreen widget here
        ),
      ),
    );
  }
}
