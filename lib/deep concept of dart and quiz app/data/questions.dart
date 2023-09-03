import '../models/quiz_questioin.dart';

final questions = [
  QuizQuestion("What is Flutter?", [
    "A programming language",
    "A mobile operating system",
    "A UI framework for building natively compiled applications",
    "A design tool for mobile apps"
  ]),
  QuizQuestion("Which of the following is not a Dart data type?",
      ["String", "Integer", "Boolean", "List"]),
  QuizQuestion("What does 'Hot Reload' do in Flutter?", [
    "It compiles the entire project",
    "It restarts the emulator",
    "It updates the UI without restarting the app",
    "It generates new widgets"
  ]),
  QuizQuestion(
      "What is the primary programming language used in Flutter development?",
      ["Java", "C++", "Python", "Dart"]),
  QuizQuestion(
      "What is the purpose of the 'pubspec.yaml' file in a Flutter project?", [
    "To define the app's user interface",
    "To list the project's dependencies",
    "To specify the app's icon",
    "To define the app's routes"
  ]),
  QuizQuestion("Which widget is used to create a clickable button in Flutter?",
      ["Text", "Container", "Image", "FlatButton"]),
  QuizQuestion("What is 'BuildContext' used for in Flutter?", [
    "To define the app's layout",
    "To manage app state",
    "To build the widget tree",
    "To access the current widget's location in the widget tree"
  ]),
  QuizQuestion("What is the main function's role in a Flutter app?", [
    "To define the app's user interface",
    "To handle user interactions",
    "To build the widget tree",
    "To be the entry point of the app"
  ]),
  QuizQuestion(
      "Which Flutter widget is used to create a scrollable list of items?",
      ["Column", "GridView", "ListView", "Stack"]),
  QuizQuestion("What is 'setState' used for in Flutter?", [
    "To define the app's layout",
    "To manage app state and trigger a UI update",
    "To create animations",
    "To navigate between screens"
  ])
];


// class QuizQuestion {
//   QuizQuestion(this.text, this.quizAnswer);

//   final String text;

//   final List<String> quizAnswer;
// }
