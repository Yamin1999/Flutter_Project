import 'package:flutter/material.dart';
import 'package:chatbox/screens/welcome_screen.dart';
import 'package:chatbox/screens/login_screen.dart';
import 'package:chatbox/screens/registration_screen.dart';
import 'package:chatbox/screens/chat_screen.dart';

void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.black54),
        ),
      ),
      home: WelcomeScreen(),
      routes: {
        WelcomeScreen.id : (context) =>  WelcomeScreen(),
        LoginScreen.id : (context) => LoginScreen(),
        RegistrationScreen.id : (context) => RegistrationScreen(),
        ChatScreen.id : (context) => ChatScreen(),

      },
    );
  }
}
