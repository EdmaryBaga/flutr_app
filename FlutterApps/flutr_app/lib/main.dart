import 'package:flutr_app/src/MyApp.dart';
import 'package:flutr_app/src/categories_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main(){
  runApp(new MaterialApp(
    home:CategoriesScreen() ,
    theme: ThemeData.dark(),
    routes: <String, WidgetBuilder>{

    },
    )
  );
}




