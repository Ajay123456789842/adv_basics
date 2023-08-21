
class QuizQuestion{

  QuizQuestion( this.question, this.answers);

  String question;
  List<String> answers;

  List<String> shuffledanswers(){
   List<String> shuffledans= List.of(answers);
   shuffledans.shuffle();
   return shuffledans;
  }
}