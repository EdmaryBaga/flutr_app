import 'package:flutter/material.dart';

import 'dart:convert'; //Esta libreria nos sirve para convertir los objetos a JSON

import './data/dummy_data.dart';
import './Widget/category_item.dart';
import 'package:http/http.dart' as http;

import 'models/product.dart'; //importamos la libreria http que agregamos al proyecto y le damos un alias

class CategoriesScreen extends StatefulWidget {
  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("DelMeal"),
      ),
      body: GridView(
        //pasamos los datos que se pasaran en el grindView
        children: DUMMY_CATEGORIES.map((catData) => CategoryItem(
          catData.title,
          catData.color,
        )).toList () ,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 200,
          childAspectRatio: 3/2, //indicamos cuantas columnas y filas tendra
          //Las siguientes dos lineas indoican el ancho y alto de cada item
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,),
      ),
    );
  }
}

