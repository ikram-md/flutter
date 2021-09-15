import 'package:flutter/material.dart';
import 'package:clima/utilities/constants.dart';
import '../services/weather.dart';
class CityScreen extends StatefulWidget {
  @override
  _CityScreenState createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xff3B185F),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter your email',
            ),
            validator: (String value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },),
              Align(
                alignment: Alignment.topLeft,
                child: TextButton(
                  onPressed: () {Navigator.pop(context);},
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 50.0,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: null,
              ),
              TextButton(
                onPressed: (){},
                child: Text(
                  'Get Weather',
                  style: kButtonTextStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
