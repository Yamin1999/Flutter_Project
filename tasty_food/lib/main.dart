import 'package:flutter/material.dart';
import 'package:tasty_food/orderscreen.dart';



void main() => runApp(tastyfood());

class tastyfood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: OrderScreen(),
    );
  }
}