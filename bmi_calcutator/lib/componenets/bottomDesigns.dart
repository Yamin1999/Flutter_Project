import 'package:flutter/material.dart';
import '../constants.dart';

class bottomDesign extends StatelessWidget {

  bottomDesign({@required this.bottomtext, @required this.ontap});
  Text bottomtext;
  Function ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

        child: Container(
          decoration: BoxDecoration(

            borderRadius: BorderRadius.circular(15.0),
            color: bottomcolor,
          ),
          child: Center(
              child: bottomtext
          ),


          margin: EdgeInsets.only(top: 10.0),
          width: double.infinity,
          height: bottomheight,
        ),
        onTap: ontap
    );
  }
}