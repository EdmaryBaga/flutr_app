import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {

  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestions;
  //final List<Map<String>> answers;

  Quiz(this.questions, this.questionIndex, this.answerQuestions);


  @override
  Widget build(BuildContext context) {
     List<Map<String, Object>> ans= questions[questionIndex]['answer'];
     String answe=ans[questionIndex]['Text'];

    return Column(
      children: <Widget>[
        Question(questions[questionIndex]['questionText'],),
        // ignore: sdk_version_ui_as_code
        /*ListView(
          padding: EdgeInsets.all(32.0),
            children: <Widget>[
              Answer(answerQuestions, ans[0]['Text']),
              Answer(answerQuestions, ans[1]['Text']),
              Answer(answerQuestions, ans[2]['Text']),
            ],
        )*/

        ListView.builder(
          padding: const EdgeInsets.all(8),
            itemCount: ans.length,
            itemBuilder: (BuildContext context, int index){
              return Container(
                height: 50,
                child:Answer(answerQuestions, answe),
              );
            }
        ),

        /*...(myQuestions[pos]['answers'] as List<String>)
            .map((answer){
              return Answer(_answerQuestions, answer);
            }).toList()*/
      ],
    );
  }
}
