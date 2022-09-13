
import '../componenets/ReuseableCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../componenets/bottomDesigns.dart';
import '../constants.dart';

class results extends StatelessWidget {

  results({@required this.bmiResult,@required this.resulttext,@required this.interpetion});

  final String bmiResult;
  final String resulttext;
  final String interpetion;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
          Center(
            child: Text(
              "BMI CALCULATOR",
              ),
          ),

      ),

      body: Column(

        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(

          child: Container(
            padding: EdgeInsets.all(15.0),
          alignment: Alignment.bottomLeft,
          child: Text(
              "Your Result",
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.w900,
            ),
          ),
          ),
          ),
          Expanded(
            flex: 5,
            child: ReuseableCard(
              colour: Color(0xFF1D1E33),
              carchild:

              Column(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[



                       Text(
                      resulttext.toUpperCase(),
                    style: semibold.copyWith(
                      color: Colors.green,
                      fontSize: 30.0,
                    ),
                  ),

                  Text(
                    bmiResult,
                    style: boldtext.copyWith(
                      fontSize: 80.0,
                    ),
                  ),

                  Text(
                interpetion,
                textAlign: TextAlign.center,
                style: TextStyle(
fontWeight: FontWeight.w400,
                  fontSize: 30.0,
                ),
              ),





                ],
              ),
            ),
          ),
          bottomDesign(bottomtext: Text(
            "RE-CALCULATE",
            style: semibold,
          ),
            ontap: (){
            Navigator.pop(context);
            },
          ),

        ],
      )
    );

  }
}


