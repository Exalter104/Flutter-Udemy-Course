import 'package:flutter/material.dart';
import 'package:udemycourse/deep%20concept%20of%20dart%20and%20quiz%20app/data/questions.dart';

import 'quiz_screen_comp.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            questions[0].text,
            style: const TextStyle(
                color: Color.fromARGB(255, 0, 0, 0), fontSize: 19),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        QuizButtons(
            onPress: () {},
            text: questions[1].quizAnswer[0],
            buttonColor: const Color.fromARGB(255, 145, 126, 187)),
        const SizedBox(
          height: 10,
        ),
        QuizButtons(
            onPress: () {},
            text: questions[1].quizAnswer[1],
            buttonColor: const Color.fromARGB(255, 148, 143, 143)),
        const SizedBox(
          height: 10,
        ),
        QuizButtons(
            onPress: () {},
            text: questions[1].quizAnswer[0],
            buttonColor: const Color.fromARGB(255, 21, 151, 60)),
        const SizedBox(
          height: 10,
        ),
        QuizButtons(
            onPress: () {},
            text: questions[1].quizAnswer[0],
            buttonColor: const Color.fromARGB(255, 178, 175, 175))
      ],
    ));
  }
}
