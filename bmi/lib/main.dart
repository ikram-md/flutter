import 'package:flutter/material.dart';
import 'input_page.dart';
void main() {
  runApp(BMI());
}

class BMI extends StatelessWidget {
  const BMI({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff10002b),
        accentColor: Color(0xff240046),
        scaffoldBackgroundColor: Color(0xff10002b),
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Color(0xffffffff))),
      ),
      home: InputPage(),
    );
  }
}

