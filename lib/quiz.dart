import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  //storing the start screen widget in active screen widget
  //print('variables can restrictive for some specific things so you could use widgets ');
  Widget activeScreen = const StartScreen(switchScreen);

  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    // TODO: implement initState
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

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
          child: activeScreen, // use the active screen widget here
        ),
      ),
    );
  }
}
