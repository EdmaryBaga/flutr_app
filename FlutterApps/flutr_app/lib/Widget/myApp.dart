import 'package:flutter/material.dart';
import 'CardItem.dart';

class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //all widget tiene un Context para ser identificado en el tree de flutter
    return Scaffold(
      appBar: AppBar(
        title: Text("Statelesswidget"),
      ),
      body: Container(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,//acemos que utilice all ancho de la panralla del dispositivo
            children: <Widget>[
              CardItem(titulo: "item1",icon:Icon( Icons.favorite, color: Colors.red,)),
              CardItem(titulo: "item2",icon:Icon( Icons.ac_unit, color: Colors.blue,))

            ],
          ),
        ),
      ),
    );
  }

}