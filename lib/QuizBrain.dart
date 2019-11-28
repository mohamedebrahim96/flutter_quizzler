import 'Quiz.dart';
class QuizBrain{
  int questionIndex = 0;

  List<Quiz> questions = [
    Quiz(true,"Brazil is the only country in the Americas whose official language is Portuguese?"),
    Quiz(true,"The first name of Kramer in Seinfeld is Cosmo?"),
    Quiz(false,"The American Civil War ended in 1776?"),
    Quiz(false,"The Ford Edsel was named after Henry Ford’s father?"),
    Quiz(false,"Snow White’s seven dwarfs all worked as lumberjacks?"),
    Quiz(true,"There are seven red stripes in the United States flag?"),

  ];

  void nextQuistion(){
    if(questionIndex < questions.length-1){
      questionIndex++;
    }else{
      questionIndex = 0;
    }
  }

  bool correctAnswer(){
    return questions[questionIndex].correctAnswer;
  }

  String getNextQuistion(){
    return questions[questionIndex].question;
  }

}