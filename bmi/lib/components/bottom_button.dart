import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({Key key, this.onPress, this.buttonText})
      : super(key: key);
  final Function onPress;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPress,
      child: Text(buttonText.toUpperCase(), style: bottoButtonText),
    );
  }
}
