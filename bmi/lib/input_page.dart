import 'package:flutter/material.dart';
import 'components/constants.dart';
import 'components/icon_card.dart';
import 'components/special_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Bmi Calculator '))),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(children: <Widget>[
              Expanded(
                  child: SpecialCard(
                    colour: primaryPurple,
                    cardChild: IconCard(ic : FontAwesomeIcons.mars, sexe: 'MALE'),
                    )),
              Expanded(
                  child: SpecialCard(colour: primaryPurple, cardChild: IconCard(ic: FontAwesomeIcons.venus, sexe: "FEMALE",),))
            ]),
            Expanded(
                child: Container(
              margin: EdgeInsets.only(left : 15.0, right: 15.0),
              decoration: BoxDecoration(
                  color: primaryPurple, borderRadius: BorderRadius.circular(10.0)),
            )),
            Row(children: <Widget>[
              Expanded(
                  child: SpecialCard(colour: primaryPurple,) ),
              Expanded(
                  child: SpecialCard(colour: primaryPurple,))
            ])
          ,Container(
            color: Color(0xffeb1555),
            height: bottomContainerHeight,
            width: double.infinity,

          )
          ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.calculate),
      ),
    );
  }
}


/*class SpecialCard extends StatelessWidget {
  const SpecialCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
                width: 200.0,
                height: 200.0,
                margin: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
      color: primaryPurple,
      borderRadius: BorderRadius.circular(10.0)),
              );
  }
}
*/
