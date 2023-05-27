import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({Key? key}) : super(key: key);

  @override
  _QuestionsScreenState createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];
    final shuffledAnswers =
        currentQuestion.getShuffledAnswers(); // Shuffle the answers

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...shuffledAnswers.map((answer) {
              return AnswerButton(answerText: answer, onTap: () {});
            }),
            // AnswerButton(
            //   answerText: currentQuestion.answers[0],
            //   onTap: () {},
            // ),
            // AnswerButton(
            //   answerText: currentQuestion.answers[1],
            //   onTap: () {},
            // ),
            // AnswerButton(
            //   answerText: currentQuestion.answers[2],
            //   onTap: () {},
            // ),
            // AnswerButton(
            //   answerText: currentQuestion.answers[3],
            //   onTap: () {},
            // ),
            // // AnswerButton(
            //   answerText: currentQuestion.answers[4],
            //   onTap: () {},
            // ),
            // AnswerButton(
            //   answerText: currentQuestion.answers[5],
            //   onTap: () {},
            // ),
            // AnswerButton(
            //   answerText: currentQuestion.answers[6],
            //   onTap: () {},
            // ),
            // AnswerButton(
            //   answerText: currentQuestion.answers[7],
            //   onTap: () {},
            // ),
            // AnswerButton(
            //   answerText: currentQuestion.answers[8],
            //   onTap: () {},
            // ),
            // AnswerButton(
            //   answerText: currentQuestion.answers[9],
            //   onTap: () {},
            // ),
            // AnswerButton(
            //   answerText: currentQuestion.answers[10],
            //   onTap: () {},
            // ),
          ],
        ),
      ),
    );
  }
}
