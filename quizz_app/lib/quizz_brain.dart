import 'question.dart';

class QuizzBrain{
   int _questionNumber = 0;
    List <Question> _questions = [
    Question('You can lead a cow down stairs but not upstairs', false),
    Question('The first Album of LZ was released in 1969', true),
    Question('Bohemian Rhapsody is the best song of Queen', false),
  ];

  //creating the getters
  String getQuestion(){
    return _questions[_questionNumber].questionText;
  }

  int getLength(){
    return _questions.length;
  }

  bool getAnswer(){
    return _questions[_questionNumber].answer;
  }
  bool checkAnswer(bool ans){
    if(getAnswer() == ans) return true;
    else return false;
  }

  void checkNextQuestion(){
    if(_questionNumber >= getLength()) _questionNumber = 0;
    else _questionNumber++;
  }
}