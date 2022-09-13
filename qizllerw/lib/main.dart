
import 'package:flutter/material.dart';
import 'package:qizllerw/questionbrain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'questions.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {


  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int i=100;
  List<Icon> scorekepper = [];
  int score =0;
  bool correctans;

    //Questions q = Questions('text',true);
QuestionBrain quiz = QuestionBrain();


  @override

  Widget build(BuildContext context) {
    if(i==100) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          CircleAvatar(
          radius: 80,
          backgroundColor: Colors.white,
          // backgroundImage: NetworkImage('https://lh3.googleusercontent.com/x51vR5m0BJ6LCacHpElPmXjfEwwVTdw64rOFD6vdGHWiI4XVl5VL_8fYGRWx-y_TJwo'),
          backgroundImage: AssetImage('images/covid19.jpg'),
        ),
    Text(
    'Quiz About Covid 19 ' ,
    style: TextStyle(
    fontFamily: 'Pacifico',
    fontSize: 30.0,
    color: Colors.white,
    fontWeight: FontWeight.bold,

    ),
    ),


                FlatButton(
                  textColor: Colors.white,
                  color: Colors.teal,
                  child: Text(
                    'Start Quiz',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      i=0;

                    });
                  },
                ),



          ],
        ),
      );
    }
    else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: <Widget>[

          Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Text(

                  quiz.getquestionText(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                  ),
                ),

              ),
            ),
          ),

          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: FlatButton(
                textColor: Colors.white,
                color: Colors.green,
                child: Text(
                  'True',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    if (i == quiz.length()) {
                      Alert(
                        context: context,
                        type: AlertType.info,
                        title: "Session End",
                        desc: "Thanks for your response.Your score is $score out of $i",
                        buttons: [
                          DialogButton(
                            child: Text(
                              "Back to quiz",
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            onPressed: () {
                              setState(() {
                                quiz.clerar();
                                i = 0;
                                scorekepper.clear();
                              });
                            },
                            color: Color.fromRGBO(0, 179, 134, 1.0),
                          ),
                          DialogButton(
                            child: Text(
                              "Back to Home",
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            onPressed: () {
                              setState(() {
                                quiz.clerar();
                                i = 100;
                                scorekepper.clear();
                              }) ;
                            },
                            gradient: LinearGradient(colors: [
                              Color.fromRGBO(116, 116, 191, 1.0),
                              Color.fromRGBO(52, 138, 199, 1.0)
                            ]),
                          )
                        ],
                      ).show();

                    }
                    else {
                      if (quiz.getquestionans() == true) {
                        scorekepper.add(
                            Icon(
                              Icons.check,
                              color: Colors.green,
                            )
                        );
                        score++;
                      }
                      else {
                        scorekepper.add(
                            Icon(
                              Icons.close,
                              color: Colors.red,
                            )
                        );
                      }


                      quiz.nextquestions();
                      i++;
                    }
                  }
                  );
                  //The user picked true.
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: FlatButton(
                color: Colors.red,
                child: Text(
                  'False',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    if (i == quiz.length()) {
                      Alert(
                        context: context,
                        type: AlertType.info,
                        title: "Session End",
                        desc: "Thanks for your response.Your score is $score out of $i",
                        buttons: [
                          DialogButton(
                            child: Text(
                              "Back to quiz",
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            onPressed: () {
                              setState(() {
                                quiz.clerar();
                                i = 0;
                                scorekepper.clear();
                              });
                            },
                            color: Color.fromRGBO(0, 179, 134, 1.0),
                          ),
                          DialogButton(
                            child: Text(
                              "Back to Home",
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            onPressed: () {
                              setState(() {
                                quiz.clerar();
                                i = 100;
                                scorekepper.clear();
                              }) ;
                            },
                            gradient: LinearGradient(colors: [
                              Color.fromRGBO(116, 116, 191, 1.0),
                              Color.fromRGBO(52, 138, 199, 1.0)
                            ]),
                          )
                        ],
                      ).show();

                    }
                    else {
                      if (quiz.getquestionans() == false) {
                        scorekepper.add(
                            Icon(
                              Icons.check,
                              color: Colors.green,
                            )
                        );
                        score++;
                      }
                      else {
                        scorekepper.add(
                            Icon(
                              Icons.close,
                              color: Colors.red,
                            )
                        );
                      }


                      quiz.nextquestions();
                      i++;
                    }
                  }
                  );
                },
              ),
            ),

          ),

          //TODO: Add a Row here as your score keeper
          Row(
            children: scorekepper,
          )
        ],
      );
    }

  }
}