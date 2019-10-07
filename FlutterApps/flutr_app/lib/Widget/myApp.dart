import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


//Metodo para mostrar el widget
class MyButton extends StatefulWidget{
  @override
  _MyButtonState createState() => _MyButtonState();

}


//Metodo para actualizar el widget
class _MyButtonState extends State<MyButton>{

  List<String> words = ['item1', 'item2', 'item3'];
  String word="";
  int index =0;

  onPressedBoton(){
    setState(() {
      index = index < words.length-1 ? index+1 : 0;
      word = words[index];
    });


  }
  @override
  Widget build(BuildContext context) {
    word = words[index];
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful Widget",),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, //se centra en la pantalla,
            children: <Widget>[
              Text(word, style: TextStyle(
                color: Colors.grey,
                fontSize: 22.0,
              ),),

             RaisedButton(onPressed: onPressedBoton ,
                 child:Text("Acualizar")
             )

            ],
          ),
        ),
      ),
    );
  }
}
