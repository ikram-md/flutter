import 'package:flutter/material.dart';
import 'question.dart';
import 'quizz_brain.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quizz App ',
      home: Scaffold(
        backgroundColor: Colors.black38,
        /*appBar: AppBar(),*/
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: QuizzApp(),
          ),
        ),
      ),
    );
  }
}

class QuizzApp extends StatefulWidget {
  const QuizzApp({ Key? key }) : super(key: key);

  @override
  _QuizzAppState createState() => _QuizzAppState();
}

class _QuizzAppState extends State<QuizzApp> {
  //List<datatype> var_name = [elements,elements, ...]
  QuizzBrain quizz_brain = new QuizzBrain();

 
  List <Icon> scoreKeeper = [];
//function to check the user's answer 
void checking(bool correctAnswer){
  if(quizz_brain.checkAnswer(correctAnswer))
  { scoreKeeper.add(Icon(Icons.check, color: Colors.green));}
  else scoreKeeper.add(Icon(Icons.clear, color: Colors.red,));
}

  @override
  Widget build(BuildContext context) {
    //function to generate a random question number
    //int randInt = new Random().nextInt(questions.length);
    quizz_brain.checkNextQuestion();
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
       Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(quizz_brain.getQuestion(), style: 
              TextStyle(fontSize: 20.0, color: Colors.white),)
            ),
          ),
        ),
        
         Expanded(
           child: Container(
             margin: EdgeInsets.only(bottom: 18.0),
             width: double.infinity,
             color: Colors.green,
             child: TextButton(
               onPressed: (){
                setState((){
                  //check the user's answer
                  checking( true);
                  quizz_brain.checkNextQuestion();
                });
               },
               child: Text(
                 'True',
                 style: TextStyle(
                   fontSize: 20.0,
                   color: Colors.white,
                 ),
               ),
             ),
           ),
         ),
         Expanded(
           child: Container(
             width: double.infinity,
             color: Colors.red,
             child: TextButton(
               onPressed: () {
                 setState(() {
                  checking(false);
                   quizz_brain.checkNextQuestion();
                     
                 });
               },
               child: Text(
                 'False',
                 style: TextStyle(
                   fontSize: 20.0,
                   color: Colors.white,
                 ),
               ),
             ),
           ),
         ), 
        Row(children: scoreKeeper)
      ],
    );
  }
}

