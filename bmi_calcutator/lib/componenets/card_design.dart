import 'package:flutter/material.dart';
import 'package:bmicalcutator/constants.dart';

class CardDesign extends StatelessWidget {

  final String Cardtext;
  final IconData Cardicon;

  CardDesign({@required this.Cardicon,  @required this.Cardtext});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          Cardicon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          Cardtext,
          style: textstyle
        ),
      ],
    );
  }
}