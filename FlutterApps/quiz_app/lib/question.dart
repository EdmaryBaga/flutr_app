import 'package:flutter/cupertino.dart';

class Question extends StatelessWidget {

  String questionText;

  //constructor
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10) ,
        child: Text(questionText,
        style: TextStyle(
            fontSize: 28),
            textAlign: TextAlign.center,
        ),
    );
  }
}
