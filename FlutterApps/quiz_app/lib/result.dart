import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int resultScore;
  final Function _resetQuizt;

  Result(this.resultScore, this._resetQuizt);

  String get resultPhrase{
    var resultText = 'you are awesomwe';

    if(resultScore<=8){
      resultText= 'suerte para la proxima ';
    }
    else{
      resultText= 'exelente';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child:Column(
          children: <Widget>[
            Text(
              resultPhrase,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            FlatButton(child: Text('RestartQuiz!'), onPressed: _resetQuizt,)
          ],
        ),
    );
  }
}
