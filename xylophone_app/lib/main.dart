import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xylophone',
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              TextButton(
                onPressed: (){
                  //function runs whenever the button is being clicked
                  final player = AudioCache();
                  player.play('assets/note1.wav');
                },
                child: Expanded(
                  child: Container(
                  color: Colors.red,
                ),),
              ),
            ]
          ),
        ),
      ),
    );
  }
}

