import 'package:flutter/material.dart';

import './new_transaction.dart';
import './transaction_list.dart';
import '../models/transaction.dart';
import 'package:personal_expenses_app/widgets/new_transaction.dart';
import 'package:personal_expenses_app/models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {

  //lista de transacciones principales
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Weekly Groceries',
      amount: 16.53,
      date: DateTime.now(),
    ),
  ];

  //metodo para añadir una nueva transaccion
  void _addNewTransaction(String txTitle, double txAmount) {

    //se crea el nuevo objeto de transaccion
    final newTx = Transaction(
      title: txTitle,
      amount: txAmount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );

    //se llama al setState para indicar que hay nurvos datos y asi pintarlos en la vista
    setState(() {
      _userTransactions.add(newTx);
    });
  }

  void startNewTransaction(BuildContext ctx){
    showModalBottomSheet(context: ctx, builder: (_)//el guion bajo idica que aun no sabes que parametros
    {
      return NewTransaction(_addNewTransaction);
    },);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),

      ],
    );
  }
}
