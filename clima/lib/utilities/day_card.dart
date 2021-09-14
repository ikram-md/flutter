import 'package:flutter/material.dart';

class DayCard extends StatelessWidget {
  const DayCard({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(color: Color(0xff3B185F)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text("Sunday"),
          Icon(Icons.access_alarm),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('19'),
            Text('13')
          ],)
      
        ]),
      
    );
  }
}