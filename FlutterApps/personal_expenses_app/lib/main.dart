import 'package:flutter/material.dart';
import 'package:personal_expenses_app/transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Expenses App',
      home: MyHomePage(),
    );
    }
  // This widget is the root of your application.
  }

class MyHomePage extends StatelessWidget {

  final List<Transaction> transaction = [
    Transaction(id: 't1', title: 'New Shoes', amount: 69.9, date: DateTime.now()),
    Transaction(id: 't2', title: 'New BagPack', amount: 109.9, date: DateTime.now()),
    Transaction(id: 't3', title: 'New Computer', amount: 69.9, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,//indicamos en que parte de la columana empieza la columna
        crossAxisAlignment: CrossAxisAlignment.center,//alinea los elementos de forma horizontal
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.blueAccent,
                child: Container(
                  width: 100,
                  child: Text('CHART!'),
                ),
                elevation: 5,
              ),
            ),
            //Hacemos dinamica la lista, agregando una lisa del contenido del mapa de transacciones
            Column(
              children: transaction.map((tx){
                return Card(
                  child: Row(children: <Widget>[
                    Container(
                      margin:EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 15,
                      ),
                      decoration: BoxDecoration(

                      ),
                      child: Text(tx.amount.toString()),),
                    Column(children: <Widget>[
                      Text(tx.title),
                      Text(tx.date.toString()),
                    ],)
                  ],)
                );
              }).toList(),
            ),
            Card(
              color: Colors.orange,
                child: Text('LIST OF TX')
            ),
          ],
      ),
    );
  }
}


