import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          color:  Colors.black,
          child: TextButton(
            onPressed : (){
               Navigator.pushNamed(context, '/one');
            },child: Text('Take you to page 1 (red page)',style: TextStyle(color: Colors.white),),),
        ),
         Container(
          color:  Colors.black,
          child: TextButton(
            onPressed : (){
               Navigator.pushNamed(context, '/two');
            },child: Text('Take you to page 2 (blue page)',style: TextStyle(color: Colors.green),),),
        ),
      ],
    );
  }
}