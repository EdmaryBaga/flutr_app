import 'package:flutter/material.dart';

class Settings extends StatelessWidget {

  static const String routName= "/configuracion";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Container(
        child: Center(
          child: Text("Pantalla Settings"),
        ),
      ),
    );
  }
}
