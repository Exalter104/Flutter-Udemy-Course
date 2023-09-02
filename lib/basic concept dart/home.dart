// ignore_for_file: must_be_immutable

import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StyleTexts(const Color.fromARGB(66, 0, 0, 0),
            const Color.fromARGB(255, 179, 179, 179))

        // StyleTexts(
        //   "Sheraz",
        //   colors: [Colors.black, Colors.green, Colors.amber],
        // ),
        );
  }
}

//------------------ 1-Creating custome Statless Widgets------------------------
/* lessone #1 

steps
1: Class name  
2: create method of build with return type of widgets and assign theme 
3: Then create a constructor of a class  with super key with positional orgument

lessone #2

create a custom variable and assign them a value
create a custom variable and not assign them  using("?") this opertor 
"?" mean this should be taht type of varibale or shuld be null
below code of variable 
*/
class StyleTexts extends StatefulWidget {
  StyleTexts(this.color1, this.color2, {super.key});

  // final String custometext;
  // final List<Color> colors;
  Color color1;
  Color color2;
  StyleTexts.sheraz({super.key})
      : color1 = Colors.black,
        color2 = const Color.fromARGB(97, 141, 141, 141);

  @override
  State<StyleTexts> createState() => _StyleTextsState();
}

class _StyleTextsState extends State<StyleTexts> {
// its conventional  method
  final startAlignment = Alignment.topLeft;

  final endAlignment = Alignment.bottomRight;

  var activeImages = 'assets/images/dice-1.png';
  activeImage() {
    var diceRoll = Random().nextInt(6) + 1; // 1<>6
    setState(() {
      activeImages = 'assets/images/dice-$diceRoll.png';
    });
  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: startAlignment,
            end: endAlignment,
            colors: [widget.color1, widget.color2]),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              activeImages,
              width: 200,
            ),
            TextButton(
                style: TextButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 255, 255, 255)),
                onPressed: activeImage,
                child: const Text("Roll Dice"))
          ],
        ),
      ),
    );
  }
}
