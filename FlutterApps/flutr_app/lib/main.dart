import 'package:flutter/material.dart';

void main(){
  var app = MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("flutApp"),
      ),
      body: Container(
        child: Center(
          child: Text("texfjs",
          style: TextStyle(
            fontSize: 46.0,//el font size acepta doubles
          ),
          ),

        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
        child: Icon(Icons.add),
        backgroundColor: Colors.purple,
      ),
    ),
  );

  runApp(app);
}




