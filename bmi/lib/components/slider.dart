import 'package:flutter/material.dart';
import 'constants.dart';


class SpecialSliderCard extends StatelessWidget {
    final double height;
    final Function onPress;
  const SpecialSliderCard({
    Key key,
    @required this.height,
    this.onPress,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center
      ,children: <Widget>[
        Text('Height ', style: localTextStyle,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Text('180.0', 
          style:boldTextStyle,
           ),
           SizedBox(width: 5.0,),
           Text('Cm', style:localTextStyle,),
        ],),
      SliderTheme(
        data: sliderStyle,
        child: Slider(
        value: height, 
        min: 120.0,
        max: 210.0,
        divisions: 20,
        label: height.toString(),
        onChanged: onPress,
      ),),
      
    ],);
  }
}
