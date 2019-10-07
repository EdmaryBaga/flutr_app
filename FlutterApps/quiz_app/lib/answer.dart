import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Answer extends StatelessWidget {

//tipo funcion
  final  Function selectHandler ;
   final String answerText;

  //constructor
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,

        child: RaisedButton(
        onPressed: selectHandler,child: Text('Clickme! $answerText'),color: Colors.blueAccent,
      ),
    );
  }
}
