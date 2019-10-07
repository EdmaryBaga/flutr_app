import 'package:flutr_app/src/home.dart';
import 'package:flutr_app/src/screens/battery.dart';
import 'package:flutr_app/src/screens/settings.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Home(),

    //Agregamos las rutas para hacer una navegacion con Navegator.pushNamed(context, route)
    routes: <String, WidgetBuilder>{
      Settings.routName: (BuildContext context ) => Settings(),
      Battery.routeName: (BuildContext context ) => Settings(),
    },
  ));
}




