import 'package:flutter/material.dart';
import '../components/constants.dart';

class UserData extends StatelessWidget {
  const UserData({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(18.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                  Text("Your Result", style: boldTextStyle,),
                Container(
                  child: Column(children: <Widget>[

                  ],),
                 height: 400.0,
                  color: primaryPurple,),
                ],),
              ),
            ),
            Container(
              child: TextButton(
                onPressed: (){
                  Navigator.pop(context);
                },
              child: Text("RE-CALCULATE", 
              style: TextStyle(color: Colors.white,
               fontSize: 28.0,
                fontWeight: FontWeight.w700,
                 letterSpacing: 1.2),
              ),
              ),
              color: Color(0xffeb1555),
              height: bottomContainerHeight,
              width: double.infinity,
            )
          ]
        ),
      ),
    );
  }
}