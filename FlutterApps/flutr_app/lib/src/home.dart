import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}


class _HomeState extends State<Home> {

  //header contendra el encabezado que tendra el menu
  var header = DrawerHeader(
    child: Text("Menu Principal"),
  );

  //info sera una opcion del menu que nos mostrara un alert con la informacion de la app
  var info = AboutListTile(
    child: Text("Informacion de la App"),
    applicationIcon: Icon(Icons.favorite),
    applicationVersion: "v0.0.0.1",
    icon:Icon(Icons.info),

  );

  //regresa el estilo de cada elemento (creamos un widget a partir de una funcion)
  ListTile getItem (Icon icon, String descripcion, String route){

    return ListTile(
      leading: icon,
      title: Text(descripcion),
      onTap: (){
        Navigator.pushNamed(context, route);//Route nos indica a que pagina debemos ir
      },
    );
  }

  //Metodo que retorna la lista para el menu, con los estilos de getItem
  ListView getList(){
    return ListView(
      children: <Widget>[
        header,
        //agregamos los elemntos del menu
        getItem(Icon(Icons.home), "Home",'/'),
        getItem(Icon(Icons.settings), "Configuracion",'/configuracion'),
        getItem(Icon(Icons.battery_charging_full), "Bateria",'/bateria'),
        info,
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
