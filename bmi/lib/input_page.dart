import 'dart:ui';
import 'package:bmi/Screens/user_data.dart';
import 'package:flutter/material.dart';
import 'components/constants.dart';
import 'components/icon_card.dart';
import 'components/special_card.dart';
import 'components/slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../app_logic/bmi_brain.dart';

//You cannot create enums inside of classes
class InputPage extends StatefulWidget {
  const InputPage({Key key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleColor = darkColor;
  Color femaleColor = darkColor;
  Genders selectedGender;
  var height = 150.0;
  var currentWeight = 55;
  var minWeight = 40;
  var maxWright = 150;
  var currentAge = 15;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Bmi Calculator '))),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(children: <Widget>[
              Expanded(
                  child: SpecialCard(
                onPress: () {
                  setState(() {
                    selectedGender = Genders.male;
                  });
                },
                colour:
                    selectedGender == Genders.male ? primaryPurple : darkColor,
                cardChild: IconCard(ic: FontAwesomeIcons.mars, sexe: 'MALE'),
              )),
              Expanded(
                  child: SpecialCard(
                  onPress: () {
                  setState(() {
                    selectedGender = Genders.female;
                  });
                },
                colour: selectedGender == Genders.female
                    ? primaryPurple
                    : darkColor,
                cardChild: IconCard(
                  ic: FontAwesomeIcons.venus,
                  sexe: "FEMALE",
                ),
              ))
            ]),
            Expanded(
                child: Container(
                  child:SpecialSliderCard(
                    height: height,
                    onPress: (double val){
                      setState(() {
                        height = val;
                      });
                      
                  },),
                margin: EdgeInsets.only(left: 15.0, right: 15.0),
                decoration: BoxDecoration(
                  color: primaryPurple,
                  borderRadius: BorderRadius.circular(10.0)),
            )),
            Row(children: <Widget>[
              Expanded(
                  child: SpecialCard(
                  colour: primaryPurple,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Weight', style: localTextStyle,),
                      Text('$currentWeight', style: boldTextStyle,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                        CustomButton(icon : Icon(
                             FontAwesomeIcons.plus,
                             color: Colors.white,
                           ), func: (){setState(() {
                             currentWeight<maxWright ? currentWeight++:currentWeight;
                           });},),
                        CustomButton(icon: Icon(
                             FontAwesomeIcons.minus,
                             color: Colors.white,
                             
                           ), func: (){
                             setState(() {
                              currentWeight>minWeight ? currentWeight--:currentWeight;
                             });
                           },)
                      ],)

                  ],),
              )),
              Expanded(
                  child: SpecialCard(
                colour: primaryPurple,
                cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Age', style: localTextStyle,),
                      Text('$currentAge', style: boldTextStyle,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                        CustomButton(icon : Icon(
                             FontAwesomeIcons.plus,
                             color: Colors.white,
                           ), func: (){setState(() {
                                currentAge++;
                           });},),
                        CustomButton(icon: Icon(
                             FontAwesomeIcons.minus,
                             color: Colors.white,
                             
                           ), func: (){
                             setState(() {
                                    currentAge--;
                             });
                           },)
                       
                      ],)

                  ],),
              ))
            ]),
            Container(
              child: TextButton(
                onPressed: (){
                  Calculator calc = Calculator(height: height, weight: currentWeight);
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return UserData(
                    bmiRes: calc.bmi_calculate(),
                     bmiText: calc.getResult(),
                     bmiFeedback: calc.getFeedback(),);
                  }));
                },
              child: Text("Claculate", 
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
          ]),
    );
  }
}

//building my own button 
class CustomButton extends StatelessWidget {
  final Icon icon;
  final Function func;
  const CustomButton({ Key key , this.icon, this.func}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: func,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0
      ),
      child: icon,
      shape: CircleBorder(),
      fillColor: activeColor,

    );
  }
}