import 'package:flutter/material.dart';

class ScreenS extends StatelessWidget {
  const ScreenS({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: TextButton(
        onPressed : (){
           Navigator.pop(context);
        },child: Text('Go back',style: TextStyle(color: Colors.white),),),
    );
  }
}