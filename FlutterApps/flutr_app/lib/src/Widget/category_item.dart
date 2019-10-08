import 'package:flutr_app/src/Widget/category_meals_screen.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {

  final String title;
  final Color color;

  CategoryItem(this.title, this.color);

  void selectedCategory(BuildContext ctx){
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
