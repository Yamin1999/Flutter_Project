import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:edoctor/constants.dart';
class Maindrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 200,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Colors.deepPurpleAccent,
            alignment: Alignment.centerLeft,

            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
         Container(

           decoration: BoxDecoration(
             borderRadius: BorderRadius.all(Radius.circular(8.0)),
             color: Colors.red,
           ),
           height: 20,
             width: 50,
           child: Text(
             '6.57',
             textAlign: TextAlign.center,
           ),
         ),


            SizedBox(
              height: 25,
            ),
                RawMaterialButton(
                  elevation: 0.0,
                  child:
                  Image.asset('images/doctor.png',
                    color: Colors.black,
                    height: 45.0,
                  ),



                  constraints: BoxConstraints.tightFor(
                    width: 56.0,
                    height: 56.0,
                  ),
                  shape: CircleBorder(),
                  fillColor: Colors.white,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Ahsan Habib',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                  ),
                ),
              ],
            ),


          ),

          SizedBox(
            height: 20,
          ),

          ListTile(
            leading: Icon(
              Icons.search,
              size: 24,
              color: Colors.black,
            ),
            title: Text(
              'Search Doctor',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            onTap: (){},

          ),

          ListTile(
            leading: Icon(
              Icons.home,
              size: 24,
              color: Colors.black,
            ),
            title: Text(
              'Home',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            onTap: (){},

          ),
          ListTile(
            leading: Icon(
              Icons.account_balance_wallet,
              size: 24,
              color: Colors.black,
            ),
            title: Text(
              'Account',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            onTap: (){},

          ),
          ListTile(
            leading: Icon(
              Icons.payment,
              size: 24,
              color: Colors.black,
            ),
            title: Text(
              'Payment',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            onTap: (){},

          ),
          ListTile(
            leading: Icon(
              Icons.assignment,
              size: 24,
              color: Colors.black,
            ),
            title: Text(
              'Appointments',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            onTap: (){},

          ),
        ],
      ),
    );
  }
}
