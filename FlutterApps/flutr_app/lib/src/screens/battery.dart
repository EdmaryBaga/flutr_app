import 'package:flutter/material.dart';

class Battery extends StatelessWidget {

  //agregamos esta contante para poder usar los routers y decir que esta es la vista bateria
  static const String routeName = "/bateria";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bateria"),
      ),
      body: Container(
        child: Center(
          child: Text("Pantalla Bateria"),
        ),
      ),
    );
  }
}
