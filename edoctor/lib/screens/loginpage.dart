import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:edoctor/constants.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Color x = Colors.deepPurple;
  Color y = Colors.black;
  String loginName = 'Login as Doctor';

  final nameHolder = TextEditingController();
  final phoneHolder = TextEditingController();
  clearTextInput() {
    nameHolder.clear();
    phoneHolder.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                SizedBox(
                  width: 15.0,
                ),
                Text(
                  'e',
                  style: TextStyle(
                    color: Colors.deepPurpleAccent,
                    fontSize: 35,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  'Daktar',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 5,
              margin: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image.asset(
                          'images/cover.jpg',
                          height: 120,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        bottom: 50,
                        left: 8,
                        child: Text(
                          'Online Health Care',
                          style: TextStyle(
                            fontFamily: 'Source Sans Pro',
                            fontSize: 25,
                            fontWeight: FontWeight.w900,
                          ),
                          softWrap: true,
                        ),
                      ),
                      Positioned(
                        bottom: 30,
                        left: 8,
                        child: Text(
                          '24 hours service',
                          style: TextStyle(
                            fontFamily: 'Source Sans Pro',
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                          softWrap: true,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RawMaterialButton(
                  elevation: 0.0,
                  child: Image.asset(
                    'images/doctor.png',
                    color: x,
                    height: 45.0,
                  ),
                  onPressed: () {
                    setState(() {
                      clearTextInput();
                      x = Colors.deepPurple;
                      y = Colors.black;
                      loginName = 'Login as Doctor';
                    });
                  },
                  constraints: BoxConstraints.tightFor(
                    width: 56.0,
                    height: 56.0,
                  ),
                  shape: CircleBorder(),
                  fillColor: Color(0xFFECFD8DC),
                ),
                RawMaterialButton(
                  elevation: 0.0,
                  child: Image.asset(
                    'images/patient.png',
                    color: y,
                    height: 45.0,
                  ),
                  onPressed: () {
                    setState(() {
                      clearTextInput();
                      y = Colors.deepPurple;
                      x = Colors.black;
                      loginName = 'Login as Patient';
                    });
                  },
                  constraints: BoxConstraints.tightFor(
                    width: 56.0,
                    height: 56.0,
                  ),
                  shape: CircleBorder(),
                  fillColor: Color(0xFFECFD8DC),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  'Doctors',
                  style: TextStyle(
                    color: x,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Patient',
                  style: TextStyle(
                    color: y,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 15.0,
                ),
                Text(
                  'Log In',
                  //textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 30.0,
                    //letterSpacing: 2.5,

                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              height: 60,
              padding: EdgeInsets.all(5.0),
              child: TextField(
                controller: phoneHolder,
                style: TextStyle(
                  color: Colors.black,
                ),
                decoration: kTextFieldInputDecoration,
                onChanged: (value) {},
              ),
            ),
            Container(
              height: 60,
              padding: EdgeInsets.all(5.0),
              child: TextField(
                controller: nameHolder,
                obscureText: true,
                style: TextStyle(
                  color: Colors.black,
                ),
                decoration: pTextFieldInputDecoration,
                onChanged: (value) {},
              ),
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 15.0,
                ),
                Text(
                  'Forgot password?',
                  //textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    // fontFamily: 'Source Sans Pro',
                    fontSize: 15.0,
                    //letterSpacing: 2.5,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                color: Colors.indigo,
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                elevation: 5.0,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/patientprofile');
                  },
                  minWidth: double.infinity,
                  height: 10.0,
                  child: Text(
                    loginName,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 60,
                ),
                Text(
                  'Dont have an account?',
                  //textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    // fontFamily: 'Source Sans Pro',
                    fontSize: 15.0,
                    //letterSpacing: 2.5,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  'sign up',
                  //textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.deepPurpleAccent,
                    // fontFamily: 'Source Sans Pro',
                    fontSize: 15.0,
                    //letterSpacing: 2.5,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
