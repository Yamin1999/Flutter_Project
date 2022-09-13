import 'package:flutter/material.dart';
import'package:flutter/cupertino.dart';

const kTempTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 100.0,
);

const kMessageTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 60.0,
);

const kButtonTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Spartan MB',
);

const kConditionTextStyle = TextStyle(
  fontSize: 100.0,
);

const kTextFieldInputDecoration = InputDecoration(
  filled: true,
  fillColor: Color(0xFFE3F2FD),
prefixIcon: Icon(
  Icons.phone,
  color: Colors.black,
),
  hintText: 'phone',
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
    borderSide: BorderSide.none,
  ),
);

const pTextFieldInputDecoration = InputDecoration(
  filled: true,
  fillColor: Color(0xFFE3F2FD),
  prefixIcon: Icon(
    Icons.lock,
    color: Colors.black,
  ),
  hintText: 'password',
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
    borderSide: BorderSide.none,
  ),
);


const qTextFieldInputDecoration = InputDecoration(
  filled: true,
  fillColor: Color(0xFFE3F2FD),
  prefixIcon: Icon(
    Icons.search,
    color: Colors.black,
  ),
  hintText: 'Search Doctor',
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
    borderSide: BorderSide.none,
  ),
);