class QuizQuestion {
  QuizQuestion(this.text, this.answer);

  final String text;

  final List<String> answer;
  List<String> getShuffledAnswers() {
    final shuffledLllist = List.of(answer);
    shuffledLllist.shuffle();
    return shuffledLllist;
  }
}
