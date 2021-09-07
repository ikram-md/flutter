import 'package:flutter/material.dart';
import 'constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({ Key key, this.icon,this.onPress}) : super(key: key);
  final Icon icon;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      child: icon,
      shape: CircleBorder(),
      fillColor: activeColor,
    );
  }
}