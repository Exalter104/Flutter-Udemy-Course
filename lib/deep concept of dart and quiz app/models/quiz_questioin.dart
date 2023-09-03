class QuizQuestion {
  QuizQuestion(this.text, this.quizAnswer);

  final String text;

  final List<String> quizAnswer;
  List<String> getShuffledAnswers() {
    final shuffledLllist = List.of(quizAnswer);
    shuffledLllist.shuffle();
    return shuffledLllist;
  }
}
