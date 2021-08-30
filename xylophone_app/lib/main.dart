import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  // This widget is the root of your application
  void getSound(int n){
    final player = AudioCache();
    player.play('note$n.wav');
  }
  Expanded buildButton(int number, String colorCode){
      var clr  = "0xff${colorCode}";
      return Expanded(
              child:
              Container(
                color: Color(int.parse(clr)),
                child : TextButton(
                onPressed: (){getSound(number);
                }, 
                child: SizedBox(),
                ),
                )
            );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xylophone',
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
            buildButton(1,"f94144"),
            buildButton(2,"f3722c"),
            buildButton(3,"f8961e"),
            buildButton(4,"90be6d"),
            buildButton(5,"43aa8b"),
            buildButton(6,"577590"),
            buildButton(7,"277da1"),
          ])
              
              
              
          )
        ),
      );
  }
}

