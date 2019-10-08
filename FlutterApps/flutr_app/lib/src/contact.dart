import 'package:flutr_app/src/Screens/contact_item.dart';
import 'package:flutter/material.dart';

import 'Model/ContactModel.dart';
class Contact extends StatelessWidget {

  buildList(){
    return<ContactModel>[
      ContactModel(name: "Sergio Perez", email: "sPerez@camsa.com"),
      ContactModel(name: "Juan Mendez", email: "jmendez@camsa.com"),
      ContactModel(name: "Lurdes Gomez", email: "lGomez@camsa.com"),
      ContactModel(name: "Susana Paez", email: "sPaez@camsa.com"),
    ];
  }

  //Convertimos los items de la lista en un widget
  List<ContactItem> buildContactList(){
    //map nos permite recorrer la lista de elementos y convertirlo a un widget
    return buildList().map<ContactItem>((Contact) => ContactItem(contact: Contact,)).toList();
    //al map se le pasa el generico para decirle que tipo de dato tratara
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contactos"),
      ),
      body: Container(
        child: ListView(
          children: buildContactList()
        ),

      ),
    );
  }
}
