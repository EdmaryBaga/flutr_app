import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}


class _HomeState extends State<Home> {

  //regresa el estilo de cada elemento
  ListTile getItem (Icon icon, String descripcion){
    return ListTile(
      leading: icon,
      title: Text(descripcion),
    );
  }

  //Metodo que retorna la lista para el menu, con los estilos de getItem
  ListView getList(){
    return ListView(
      children: <Widget>[

        getItem(Icon(Icons.home), "Pagina Principal"),
        getItem(Icon(Icons.settings), "configuracion"),
        getItem(Icon(Icons.battery_charging_full), "Bateria")
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PaginaPrincipal"),
         ),
        //drawer: Drawer(),//agrega el menu, si elementos
      drawer: Drawer(child:getList()),
    );
  }
}
