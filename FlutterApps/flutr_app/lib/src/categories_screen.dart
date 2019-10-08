import 'package:flutter/material.dart';

import './data/dummy_data.dart';
import './Widget/category_item.dart';

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
