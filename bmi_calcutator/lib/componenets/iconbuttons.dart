
import 'package:flutter/material.dart';
class IconButtons extends StatelessWidget {
  IconButtons({@required this.iconbutton, @required this.onpress});

  final IconData iconbutton;

  final Function onpress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onpress,
      child: Icon(
        iconbutton,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      elevation: 6.0,
    );
  }
}