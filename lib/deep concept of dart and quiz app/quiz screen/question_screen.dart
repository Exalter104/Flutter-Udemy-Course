import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:udemycourse/deep%20concept%20of%20dart%20and%20quiz%20app/data/questions.dart';

import 'quiz_screen_comp.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({
    super.key,
  });

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var changeQuestionIndex = 0;

  void changeQuestIndex() {
    setState(() {
      changeQuestionIndex += 1;
    });
  }

//... its for understanding of spread operator
  // @override
  // void initState() {
  //   List<int> list1 = [1, 2, 3];
  //   List<int> list2 = [4, 5, ...list1, 6, 7];
  //   print(list2);
  //   setState(() {
  //     print(list2);
  //   });

  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[changeQuestionIndex];
    return Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Container(
          margin: const EdgeInsets.all(18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Text(
                  currentQuestion.text,
                  style: GoogleFonts.lato(
                      color: const Color.fromARGB(255, 187, 186, 188),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              /*
        (... ==> spread operator) this operator add a list in orignal list like 
         e.g:  List<int> list1 = [1, 2, 3];
        List<int> list2 = [4, 5, ...list1, 6, 7];
        print(list2):
        output is : [4, 5, 1, 2, 3, 6, 7]
        but what map does work
        currentQuestion.quizAnswer represents the answer choices for the current question. In our example, it's ["Paris", "London", "Berlin"].
        .map((read) { ... }) applies a function to each element in the answer choices list. In this function, we use the name read to represent each individual answer choice.
        */

              ...currentQuestion.getShuffledAnswers().map((read) {
                return QuizButtons(
                    onPress: () {
                      changeQuestIndex();
                    },
                    text: read,
                    buttonColor: const Color.fromARGB(255, 61, 7, 75));
              }),
            ],
          ),
        ));
  }
}
