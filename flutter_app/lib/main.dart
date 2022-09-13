
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('Home Tutor'),
          backgroundColor: Colors.blueGrey[900],
        ),
        body:
          Center(
            child: Image(
              image: NetworkImage('https://media.gettyimages.com/photos/cropped-image-of-person-eye-picture-id942369796?s=612x612'),
            ),
          ),
        ),
      )
  );
}
