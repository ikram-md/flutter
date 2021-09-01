import 'question.dart';
class QuizzBrain{
   int _questionNumber = 0;
    List <Question> _questions = [
    Question('You can lead a cow downstairs but not upstairs', false),
    Question('The first Album of LZ was released in 1969', true),
    Question('Bohemian Rhapsody is the best song of Queen', false),
    Question('Andromida is the closest galaxy to ours', true),
  ];

  //creating the getters
  String getQuestion(){
    return _questions[_questionNumber].questionText;
  }
  void getCurrentQuestionNumber(){
    print(this._questionNumber);
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
    if(_questionNumber >= getLength()){this._questionNumber = 0;}
    else {this._questionNumber++;}
  }
  bool isFinished(){
    if(_questionNumber >= getLength()) return true;
    else return false; 
  }
  void gameInit(){this._questionNumber = 0;}
}