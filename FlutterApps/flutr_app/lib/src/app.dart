import 'package:flutr_app/src/screens/second.dart';
import 'package:flutter/material.dart';

//esta tambien puede ser un statless

class App extends StatefulWidget{
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Primer Pantalla"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Mostrar pantalla"),
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Second("Dato")
              )
            );
          },
        ),
      ),
    );
  }
}