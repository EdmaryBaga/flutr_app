import 'package:flutr_app/src/Model/ContactModel.dart';
import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {
  final ContactModel contact;
  ContactItem ({this.contact});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar( child: Text(contact.name.codeUnitAt(0).toString()),), //Se agrga una imagen del lado derecho con una forma circular
      title: Text(contact.name),//titulo del item
      subtitle: Text(contact.email),//subtitulo del item
    );
  }
}
