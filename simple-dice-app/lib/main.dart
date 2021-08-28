import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            title: Center(
              child: Text(
                'Dicee',
              ),
            ),
            backgroundColor: Colors.red,
          ),
          body: DiceApp(),
        ),
    );
  }
}
class DiceApp extends StatefulWidget {
  const DiceApp({Key? key}) : super(key: key);

  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  //this is where you initialize variables and eclare functions
  var left = Random().nextInt(6)+1;
  var right = Random().nextInt(6)+1;
  void changeDies(){
    setState(() {
       left = Random().nextInt(6)+1;
       right = Random().nextInt(6)+1;
    });

  }

  @override
  Widget build(BuildContext context) {
    //funcutionality
    return Container(
      child : Center(
        child: Row(
            children : <Widget>[
              Expanded(
                  child : TextButton(
                    onPressed: (){
                  changeDies();
                    },
                    child: Image.asset('images/dice$left.png'),
                  )
              ),
              //SizedBox(width: 20.0,),
              Expanded(
                  child : TextButton(
                      onPressed: (){
                            changeDies();
                      },
                      child: Image.asset('images/dice$right.png'))
              ),
            ]
        ),
      ),
    );
  }
}
