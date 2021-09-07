import 'package:flutter/material.dart';
import '../components/constants.dart';
import '../components/special_card.dart';
import '../app_logic/bmi_brain.dart';

class UserData extends StatelessWidget {
  const UserData({this.bmiRes, this.bmiText, this.bmiFeedback});
  final String bmiRes;
   final String bmiText;
   final String bmiFeedback;
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
                        Text(bmiText.toUpperCase(), style: successText,),
                        Text(bmiRes, style: biggerBoldText,),
                        Text(
                        bmiFeedback,
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