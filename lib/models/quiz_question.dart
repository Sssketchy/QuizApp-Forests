// this is not widget so no extends
class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  // 2 property
  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    final List<String> shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
