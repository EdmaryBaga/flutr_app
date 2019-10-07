import 'package:flutter/material.dart';

class CardItem extends StatelessWidget{

  final String titulo;
  final Widget icon;
  CardItem({this.titulo, this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Text(titulo.toString(),
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              icon,
            ],
          ),
        )
    );
  }

}