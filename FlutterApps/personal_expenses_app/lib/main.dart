import 'package:flutter/material.dart';
import 'package:personal_expenses_app/transaction.dart';
import 'package:intl/intl.dart';

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
    Transaction(id: 't2', title: 'New BagPack', amount: 89.9, date: DateTime.now()),
    Transaction(id: 't3', title: 'New Computer', amount: 59.9, date: DateTime.now()),
  ];

  //String titleInput;
  //String amountInput;

  final titleController = TextEditingController();
  final amountController = TextEditingController();

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

            Card(
              elevation: 5,
              child:Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    TextField(
                      decoration:
                      InputDecoration(labelText: 'Title'),
                      //onChanged: (val){titleInput=val;},
                      controller: titleController,
                    ),
                    TextField(
                      decoration:
                      InputDecoration(labelText: 'Amount'),
                      //onChanged: (val) => amountInput = val,
                      controller: amountController,
                    ),

                    FlatButton(
                      onPressed: () {
                        print(titleController.text);
                        print(amountController.text);
                      },
                      child: Text('Add Transaction'),
                      textColor: Colors.purple,
                    )
                  ],
                ),
              )

            ),

            //Hacemos dinamica la lista, agregando una lisa del contenido del mapa de transacciones
            Column(
              children: transaction.map((tx){
                return Card(
                  child: Row(children: <Widget>[
                    Container(
                      margin:EdgeInsets.symmetric(
                        vertical : 10,
                        horizontal: 15,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                      padding: EdgeInsets.all(10),//Se añade un pading ,
                      child: Text(' \$'+tx.amount.toString(), style: TextStyle(
                        fontWeight:FontWeight.bold,
                        fontSize: 20,
                        color: Colors.indigoAccent,
                      ),),
                    ),
                    Column(children: <Widget>[
                      Text(tx.title),
                      Text(DateFormat('yyyy-MM-dd').format( tx.date),
                      style: TextStyle(
                        color: Colors.grey,
                      ),),
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


