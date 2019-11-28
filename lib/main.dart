import 'package:flutter/material.dart';
import 'package:flutter_quizzler/QuizBrain.dart';

void main() => runApp(Quizzler());


QuizBrain _quizBrain = new QuizBrain();
class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[800],
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
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

  List<Icon> ass = [];

  void _changeQuestions(bool answer){
    setState(() {
      _quizBrain.nextQuistion();
      if(answer == _quizBrain.correctAnswer()){
        ass.add(
            Icon(Icons.check,
              color: Colors.green,)
        );
      }else{
        ass.add(
            Icon(Icons.close,
              color: Colors.red,)
        );
      }

    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
      Expanded(flex:5,child: Center(child:
      Text(_quizBrain.getNextQuistion(),
        style: TextStyle(
            fontSize:30.0,
            color: Colors.white),)),),
      Expanded(flex:1,child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FlatButton(
          color: Colors.green,
          child: Text("YES"), onPressed: () {
          _changeQuestions(true);
        },),
      )),
      Expanded(flex:1,child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FlatButton(
          color: Colors.red,
          child: Text("No"), onPressed: () {
          _changeQuestions(false);
        },),
      )),
        //TODO: you need to submit ur code
        Row(children: ass),
    ],);
  }
}


