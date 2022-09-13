import 'package:flutter/material.dart';
import '../constants.dart';

class ReuseableCard extends StatelessWidget {

  final Color colour;
  final Widget carchild;
  Function gesture;
  ReuseableCard({@ required this.colour, this.carchild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: carchild,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }

}

