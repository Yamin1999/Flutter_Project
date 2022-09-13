import 'package:flutter/material.dart';
import 'package:edoctor/screens/loginpage.dart';
import 'package:edoctor/screens/profilePatient.dart';

void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    theme: ThemeData.dark(),
    home: LoginScreen(),

      routes:
      {
        '/patientprofile': (context) => PatientProfile(),
        '/loginpage' : (context) => LoginScreen(),
  },
    );
  }
}