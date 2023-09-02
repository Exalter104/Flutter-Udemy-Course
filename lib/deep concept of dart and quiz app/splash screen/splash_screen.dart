import 'package:flutter/material.dart';
import 'package:udemycourse/deep%20concept%20of%20dart%20and%20quiz%20app/quiz%20screen/question_screen.dart';
import 'package:udemycourse/deep%20concept%20of%20dart%20and%20quiz%20app/splash%20screen/splash_screen_comp.dart';
import 'package:udemycourse/resources/app_images.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashScreenComp(
        quizLogo: const AssetImage(
          AppImages.quizLogo,
        ),
        desctext: "Learn Flutter the fun way!",
        buttontext: 'Start Quiz',
        buttonTextColor: Colors.white,
        color1: Colors.deepPurple,
        color2: const Color.fromARGB(255, 27, 1, 72),
        buttonIcon: const Icon(
          Icons.arrow_right_alt,
          color: Colors.white,
        ),
        onPress: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  const QuestionScreen(), // Replace with the screen you want to navigate to
            ),
          );
        },
      ),
    );
  }
}
