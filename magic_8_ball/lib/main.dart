import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade300,
        appBar: AppBar(
          title: Center(child: Text('Ask Me Anything',
            style: TextStyle(
              fontSize: 30.0,
              fontFamily: 'Pacifico',
              fontWeight: FontWeight.bold,
            ),

          ),

          ),
          backgroundColor: Colors.blue,
        ),
        body: Magicball(),
      ),
    ),
  );
}

class Magicball extends StatefulWidget {
  @override
  _MagicballState createState() => _MagicballState();
}

class _MagicballState extends State<Magicball> {
  int ballno = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[

          Expanded(
            child: FlatButton(
              child:
              Image.asset('images/ball$ballno.png'),
              onPressed: () {
              setState(() {
                ballno = Random().nextInt(5)+1;
              });

              },

            ),
          ),

        ],
      ),
    );
  }
}



