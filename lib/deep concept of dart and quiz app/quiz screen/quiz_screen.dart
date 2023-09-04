import 'package:flutter/material.dart';

import '../models/quiz_questioin.dart';

class QuestionResultWidget extends StatelessWidget {
  final QuizQuestion question;
  final int correctAnswerIndex;
  const QuestionResultWidget({
    super.key,
    required this.question,
    required this.correctAnswerIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      padding: const EdgeInsets.all(16.0),
      color: const Color.fromARGB(255, 108, 11, 125),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Question: ${question.text}',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          Column(
            children: question.answer.asMap().entries.map((entry) {
              final index = entry.key;
              final answer = entry.value;

              return ListTile(
                title: Text(
                  '${String.fromCharCode(65 + index)}. $answer',
                  style: TextStyle(
                    color: index == correctAnswerIndex
                        ? const Color.fromARGB(255, 37, 244, 0)
                        : const Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

class QuizScreen extends StatelessWidget {
  final List<QuizQuestion> questions;

  const QuizScreen({super.key, required this.questions});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 83, 27, 115),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'RESULT OF THE QUIZ ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    height: 550, // Set the desired height
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 2,
                            color: const Color.fromARGB(255, 126, 34, 183)),
                        borderRadius: BorderRadius.circular(20)),
                    child: ListView(
                      children: questions.asMap().entries.map((entry) {
                        final question = entry.value;

                        return QuestionResultWidget(
                          question: question,
                          correctAnswerIndex:
                              1, // Replace with the actual correct answer index
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
