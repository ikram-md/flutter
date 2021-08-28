import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

//stateless widget ==> widget dedicated for the layout only
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magic 8 ball',
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          title: Center(
            child: Text('Magic 8 Ball'),
          ),
        ),
        body: MagicBall(),
      ),
    );
  }
}

//stateful widget => widget with functionality 
class MagicBall extends StatefulWidget {
  const MagicBall({Key? key}) : super(key: key);

  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  //generating a random number between 1 and 5
  var randNum = Random().nextInt(5) +1;
  void changeImage(){
   setState(() {
      randNum = Random().nextInt(5) +1;
   });
 }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
            Expanded(child:
            TextButton(
              onPressed: (){
                changeImage();
              },
              child: Image.asset('images/ball$randNum.png'),
            ),)
        ],
      ),
    );
  }
}
