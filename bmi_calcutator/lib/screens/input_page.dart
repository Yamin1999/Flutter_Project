import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../componenets/ReuseableCard.dart';
import '../componenets/card_design.dart';
import '../constants.dart';
import 'package:bmicalcutator/calculation.dart';
import '../componenets/bottomDesigns.dart';
import '../componenets/iconbuttons.dart';
import 'results_page.dart';



class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardcolrVar = inactiveCardColor;
  Color femaleCardcolrVar = inactiveCardColor;
  int height = 180;
  int Weight = 60;
  int Age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        maleCardcolrVar == activeCardcolor
                            ? maleCardcolrVar = inactiveCardColor
                            : maleCardcolrVar = activeCardcolor;
                        femaleCardcolrVar = inactiveCardColor;
                      });
                    },
                    child: ReuseableCard(
                      colour: maleCardcolrVar,
                      carchild: CardDesign(
                        Cardtext: "Male",
                        Cardicon: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        femaleCardcolrVar == activeCardcolor
                            ? femaleCardcolrVar = inactiveCardColor
                            : femaleCardcolrVar = activeCardcolor;
                        maleCardcolrVar = inactiveCardColor;
                      });
                    },
                    child: ReuseableCard(
                      colour: femaleCardcolrVar,
                      carchild: CardDesign(
                        Cardtext: "Female",
                        Cardicon: FontAwesomeIcons.venus,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReuseableCard(
              colour: activeCardcolor,
              carchild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "HEIGHT",
                    style: textstyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: boldtext,
                      ),
                      Text(
                        "cm",
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0xFF8D8E98),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double newvalue) {
                        setState(() {
                          height = newvalue.toInt();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReuseableCard(
                    colour: activeCardcolor,
                    carchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "WEIGHT",
                          style: textstyle,
                        ),
                        Text(
                          Weight.toString(),
                          style: boldtext,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            IconButtons(
                              iconbutton: FontAwesomeIcons.minus,
                              onpress: () {
                                setState(() {
                                  Weight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            IconButtons(
                              iconbutton: FontAwesomeIcons.plus,
                              onpress: () {
                                setState(() {
                                  Weight++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    colour: activeCardcolor,
                    carchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Age",
                          style: textstyle,
                        ),
                        Text(
                          Age.toString(),
                          style: boldtext,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            IconButtons(
                              iconbutton: FontAwesomeIcons.minus,
                              onpress: () {
                                setState(() {
                                  Age--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            IconButtons(
                              iconbutton: FontAwesomeIcons.plus,
                              onpress: () {
                                setState(() {
                                  Age++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottomDesign(
            bottomtext: Text(
              "CALCULATE",
              style: semibold,
            ),
            ontap: () {
              Calculation user = Calculation(height,Weight);
              Navigator.push(
                context,
              MaterialPageRoute(
                builder: (context) => results(
                  bmiResult: user.calculateBMI(),
                  resulttext: user.getResult(),
                  interpetion: user.getAdvice(),
                ),
              ),
              );
            },
          ),
        ],
      ),
    );
  }
}
