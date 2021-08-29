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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xylophone',
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
            
            Expanded(
              child:
              Container(
                color: Colors.red,
                child : TextButton(
                onPressed: (){getSound(1);
                }, 
                child: SizedBox(),
                ),
                )
            ),
             Expanded(
              child:
              Container(
                color: Colors.orange,child : TextButton(
                onPressed: (){getSound(2);
                }, 
                child: SizedBox(),
                ),
                )
            ),
            Expanded(
              child:
              Container(
                color: Colors.yellow,child : TextButton(
                onPressed: (){getSound(3);
                }, 
                child: SizedBox(),
                ),
                )
            ),
            Expanded(
              child:
              Container(
                color: Colors.green,
                child : TextButton(
                onPressed: (){getSound(4);
                }, 
                child: SizedBox(),
                ),
                )
            ),
            Expanded(
              child:
              Container(
                color: Colors.teal,
                child : TextButton(
                onPressed: (){getSound(5);
                }, 
                child: SizedBox(),
                ),
                )
            ),
             Expanded(
              child:
              Container(
                color: Colors.blue,
                child : TextButton(
                onPressed: (){getSound(6);
                }, 
                child: SizedBox(),
                ),
                )
            ),
             Expanded(
              child:
              Container(
                color: Colors.indigo,
                child : TextButton(
                onPressed: (){getSound(7);
                }, 
                child: SizedBox(),
                ),
                )
            ),
             
          ])
              
              
              
          )
        ),
      );
  }
}

