import 'package:flutter/material.dart';

enum Genders {male, female}
const primaryPurple = Color(0xff1d1e33);
const darkColor =  Color(0xff15687);
const activeColor = Color(0xff4A4763);
const hotPink = Color(0xffeb1555);
const sliderStyle = SliderThemeData(
                        thumbColor: hotPink,
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Colors.grey,
                        inactiveTickMarkColor : darkColor,
                        thumbShape : RoundSliderThumbShape(enabledThumbRadius : 15.0),
                      );
const boldTextStyle = TextStyle(fontSize: 50.0, fontWeight: FontWeight.w900);
const localTextStyle = TextStyle(fontSize: 18.0, color: Color(0xff8d8d88));
const biggerBoldText = TextStyle(fontSize: 100.0, fontWeight: FontWeight.w900);
const successText = TextStyle(fontSize: 35.0, fontWeight: FontWeight.w500, color: Colors.green);
const resultText = TextStyle(fontSize: 24.0, fontWeight: FontWeight.w400, );
const bottoButtonText = TextStyle(color: Colors.white,fontSize: 28.0,fontWeight: FontWeight.w700,letterSpacing: 1.2);


const bottomContainerHeight = 60.0;