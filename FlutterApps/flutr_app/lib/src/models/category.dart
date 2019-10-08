
import 'package:flutter/material.dart';

class Category{
  final String id;
  final String title;
  final Color color;

  const Category({ //colocamos el constructor como const para que se puedan inicializar con los nuevos datos de cada objeto
    @required this.id,
    @required this.title,
    this.color= Colors.orange
  });

}