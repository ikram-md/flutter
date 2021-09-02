import 'package:flutter/material.dart';
import 'constants.dart';

class SpecialCard extends StatelessWidget {
  final Widget cardChild;
  final Color colour;
  final Function onPress; 

  const SpecialCard({
    Key key, this.colour = primaryPurple, this.cardChild, this.onPress
    }): super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        width: 160.0,
        height: 160.0,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: colour,
             borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}
