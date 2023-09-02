import 'package:flutter/material.dart';

class SplashScreenComp extends StatelessWidget {
  final ImageProvider quizLogo;
  final Color color1;
  final Icon buttonIcon;
  final Color color2;
  final String desctext;
  final void Function() onPress;
  final String buttontext;
  final Color buttonTextColor;
  const SplashScreenComp(
      {Key? key,
      required this.quizLogo,
      required this.desctext,
      required this.onPress,
      required this.buttontext,
      required this.buttonTextColor,
      required this.color1,
      required this.color2,
      required this.buttonIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(gradient: LinearGradient(colors: [color1, color2])),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: quizLogo,
              color: const Color.fromARGB(150, 255, 255, 255),
              width: 220,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              desctext,
              style: const TextStyle(color: Colors.white, fontSize: 17),
            ),
            const SizedBox(
              height: 20,
            ),
            OutlinedButton.icon(
              icon: buttonIcon,
              label: Text(
                buttontext,
                style: TextStyle(
                  color: buttonTextColor,
                ),
              ),
              onPressed: onPress,
            )
          ],
        ),
      ),
    );
  }
}
