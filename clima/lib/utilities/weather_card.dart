import 'package:flutter/material.dart';

class WeatherCard extends StatefulWidget {
  WeatherCard({Key key, this.weatherIcon}) : super(key: key);
  final String weatherIcon;
  @override
  _WeatherCardState createState() => _WeatherCardState();
}

class _WeatherCardState extends State<WeatherCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5, bottom: 5),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Text('10 AM', style: TextStyle(fontSize: 18),),
            Text(widget.weatherIcon),

          ],
        ),
      ),
    );
  }
}