
import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Segunda Pantalla"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Ir atras",),
          onPressed: (){
            Navigator.pop(context);//le decimos que elimine la vista actual, y nos muestre la sigueinte que se encuentra en la pila
          },
        ),
      ),
    );
  }
}
