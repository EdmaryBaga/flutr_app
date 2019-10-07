import 'package:flutter/material.dart';
import 'dart:async';

import 'package:quiz_app/result.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

// ignore: must_be_immutable
class MyApp extends StatefulWidget{


  @override
  State<StatefulWidget> createState() {

    return MyAppState();
  }

}

class MyAppState extends State<MyApp>{

  //no colocarlo static es una mala practica en su lugar volverlo un final y despuès un const
   final _questions =  const[
    {'questionText':'What\'s your favorite color?',
      'answer':[
       {'Text':'Black', 'score':10},
       {'Text': 'Red', 'Score':5},
        {'Text': 'Yellow', 'Score':8}
        ]
    },
    {'questionText':'What\'s your favorite Animal?',
      'answer':[
        {'Text':'Dog', 'score':10},
        {'Text':'Horse', 'score':8},
        {'Text':'Bird', 'score':1}
      ]
    },
    {'questionText':'What\'s your favorite Actor?',
      'answer':[
        {'Text':'Ven Diesel', 'score':10},
        {'Text':'Jonny Depp', 'score':10},
        {'Text':'Fernando Gomez', 'score':10},
      ]
    },
  ];


   //String _question=myQuestions[0]['questionText'];

   var _totalScore=0;

  var questionIndex =0;

  void _answerQuestions(){

    _totalScore+= 1;//debe sumar el Score

      setState(() {
        questionIndex+=1;

        if (questionIndex <_questions.length) {
          questionIndex++;
            print('we have more questions!!');
        }
    });
  }

  void _resetQuiz(){
    setState(() {
      questionIndex =0;
      _totalScore=0;
    });
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('App Quiz'),
        ),
        body: questionIndex < _questions.length ? Quiz(_questions, questionIndex, ()=> _answerQuestions())
            : Result(_totalScore, _resetQuiz)
      ),
    );
  }

}