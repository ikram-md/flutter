import 'package:bmi/Screens/screen0.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';
import 'components/constants.dart';
import 'Screens/user_data.dart';
void main() {
  runApp(BMI());
}

class BMI extends StatelessWidget {
  const BMI({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/' : (context)=> const InputPage(),
        '/user' : (context)=> const UserData(),
      },
      theme: ThemeData(
        primaryColor: Color(0xff10002b),
        accentColor: primaryPurple,
        scaffoldBackgroundColor: Color(0xff10002b),
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Color(0xffffffff))),
      ),
      
    );
  }
}

