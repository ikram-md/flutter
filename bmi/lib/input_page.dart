import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({ Key? key }) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Bmi Calculator '))),
      body: Column(
        children : <Widget>[
          Row(
            children: <Widget>[
              Container(
                color: Colors.grey,
                width: 200.0,
                height: 300.0,
              )
            ],
          ),
          
        ]
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.calculate),
      ),
    );
  }
}