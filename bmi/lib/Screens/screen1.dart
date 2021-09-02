import 'package:flutter/material.dart';
import 'screen2.dart';
class Screen extends StatelessWidget {
  const Screen({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: TextButton
      (child: Text("Go back to home"),
      onPressed: (){
        //navigate to the second route 
       Navigator.pop(context);}
  ),

      
    );
  }
}