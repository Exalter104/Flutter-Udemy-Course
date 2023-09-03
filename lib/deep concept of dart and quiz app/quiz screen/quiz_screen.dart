import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  final List<String> selectedAnswers;

  const QuizScreen({
    Key? key,
    required this.selectedAnswers,
  }) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  // void chooseAnswer(String answer) {
  //   selectedAnswers.add(answer);
  // }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
