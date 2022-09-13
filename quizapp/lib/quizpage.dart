import 'package:flutter/material.dart';
import './questions.dart';
import './answerlist.dart';

class QuizApp extends StatefulWidget {
  QuizApp({Key key}) : super(key: key);

  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  var index = 0;
  List<Questions> qus = [
    Questions(question: 'What\'s is your favorite food?', answer: 'Meat'),
    Questions(question: 'What\'s your favorite writter?', answer: 'tom hancks')
  ];

  List<AnswerList> ans = [
    AnswerList('Burger', 'Rice', 'Apple', 'Meat'),
    AnswerList('tom Bajaj', 'tom cruse', 'tom hancks', 'tom pikas'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Quiz'),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(15.0),
            child: Text(
              qus[index].question,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Buildcontainer(
            ans: ans[index].ans1,
            onpress: (() {
              setState(() {
                index++;
              });
            }),
          ),
          Buildcontainer(
            ans: ans[index].ans2,
            onpress: (() {
              setState(() {
                index++;
              });
            }),
          ),
          Buildcontainer(
            ans: ans[index].ans3,
            onpress: (() {
              setState(() {
                index++;
              });
            }),
          ),
          Buildcontainer(
            ans: ans[index].ans4,
            onpress: (() {
              setState(() {
                index++;
              });
            }),
          ),
        ],
      ),
    );
  }
}

class Buildcontainer extends StatelessWidget {
  final String ans;
  final Function onpress;

  Buildcontainer({@required this.ans, @required this.onpress});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(
          ans,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        onPressed: onpress,
      ),
    );
  }
}
