import 'package:flutter/material.dart';
import '../components/constants.dart';
import '../components/special_card.dart';

class UserData extends StatelessWidget {
  const UserData({ Key key }) : super(key: key);
  void calculateBMI(){

  }
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
                  Expanded(
                  child: SpecialCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text("You're healthy", style: successText,),
                        Text("22.8", style: biggerBoldText,),
                        Text("You have an extra fat that could lead to dangerous diseases",
                        style: resultText,
                        textAlign: TextAlign.center,)
                    ],)
                    ),
                    )
                ],),
              ),
            ),
            Container(
              child: TextButton(
                onPressed: (){
                  //we can use as well 
                  // Navigator.pushNamed(context, '/');
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