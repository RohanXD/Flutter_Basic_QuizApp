class QuizQuestion {
  const QuizQuestion(this.ques, this.ans); //ques=questions , ans=answers
  final String ques;
  final List<String> ans;

  List<String> getShuffledAnswers() {
    final shuffledList = List.of(ans);
    shuffledList.shuffle();
    return shuffledList;
  }
}