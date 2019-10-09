import 'package:flutr_app/src/Widget/category_meals_screen.dart';
import 'package:flutr_app/src/models/product.dart';
import 'package:flutter/material.dart';

import 'dart:convert'; //Esta libreria nos sirve para convertir los objetos a JSON
import 'package:http/http.dart' as http;

class CategoryItem extends StatelessWidget {

  final String title;
  final Color color;

  CategoryItem(this.title, this.color);

  Future addProduct(Product product) async {
    //para realizar el match colocar la extencion .json
    const url = 'https://flutrapp.firebaseio.com/products.json';//indicamos la direccion a la que nos conectaremos
    var response = await http.post(url, body: json.encode({
      'title': product.title,
      'description': product.description,
      'imageUrl': product.imageUrl,
      'price':product.price,
      'isFavorite': product.isFavorite,
    }));//llamamos a un post
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    print('Response status: ${response.statusCode}');


    final newProduct = Product(
      title: product.title,
      description: product.description,
      price: product.price,
      imageUrl: product.imageUrl,
      id: DateTime.now().toString(),
    );
  }

  void selectedCategory(BuildContext ctx){
    addProduct(Product(title: 'producto1', description: 'Es color...', imageUrl: 'imagen/cualquiera', price: 22.3, isFavorite: true));
    Navigator.of(ctx).push(MaterialPageRoute(
      builder: (_) {
        return CategoryMealsScreen();
      }
    ));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell( //inkwell le da un efecto de onda
      onTap: () =>selectedCategory(context) ,
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(title),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [color.withOpacity(0.7),
            color,],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),//agregamos exquinas redondas
        ),
      ),
    ) ;
  }
}
