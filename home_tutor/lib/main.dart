import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
    body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.red,
           // backgroundImage: NetworkImage('https://lh3.googleusercontent.com/x51vR5m0BJ6LCacHpElPmXjfEwwVTdw64rOFD6vdGHWiI4XVl5VL_8fYGRWx-y_TJwo'),
          backgroundImage: AssetImage('images/teacher.png'),
          ),
          Text(
            'Home Tutor',
            style: TextStyle(
              fontFamily: 'Pacifico',
              fontSize: 40.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,

            ),

          ),
          Text(
            'ONLINE PLATFORM',
            style: TextStyle(
              fontFamily: 'Source Sans Pro',
              color: Colors.teal[100],
              fontSize: 20.0,
              letterSpacing: 2.5,
              fontWeight: FontWeight.bold,

            ),
          ),
          SizedBox(
            height: 20.0,
            width: 150.0,
            child: Divider(
              color: Colors.teal.shade100,

            ),
          ),
          Card(

            color: Colors.white,

            margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
            child: ListTile(
              leading: Icon(
                Icons.phone,
                color: Colors.teal,
              ),
              title:Text(
                '+880 1521419981',
                style: TextStyle(
                  color: Colors.teal.shade900,
                  fontFamily: 'Source Sans Pro',
                  fontSize: 18.0,
                ),
              ),
            ),


          ),
          Card(

            color: Colors.white,

            margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
            child: ListTile(
              leading: Icon(
                Icons.email,
                color: Colors.teal,
              ),
              title:Text(
                'yamin@gmail.com',
                style: TextStyle(
                  color: Colors.teal.shade900,
                  fontFamily: 'Source Sans Pro',
                  fontSize: 18.0,
                ),
              ),
            ),


          ),
        ],
      ),
    ),
      ),
    );
  }
}

