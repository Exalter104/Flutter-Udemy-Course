import 'package:flutter/material.dart';

class QuizButtons extends StatelessWidget {
  final String text;
  final Color buttonColor;
  final void Function() onPress;
  const QuizButtons(
      {super.key,
      required this.onPress,
      required this.text,
      required this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            backgroundColor: Colors.deepOrange,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40))),
        onPressed: onPress,
        child: Text(text));
  }
}
