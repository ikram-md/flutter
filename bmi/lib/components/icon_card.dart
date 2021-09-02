import 'package:flutter/material.dart';
import 'constants.dart';

class IconCard extends StatelessWidget {
  final IconData ic;
  final String sexe;
  const IconCard({
    Key key, @required this.ic,
    this.sexe

  }) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(ic, size: 80.0,
        color: Colors.white,),
        SizedBox(height: 15.0,)
        ,Text(sexe,style: localTextStyle),
      ],
    );
  }
}
