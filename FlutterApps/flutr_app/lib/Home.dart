import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}


class _HomeState extends State<Home> {

  var header = DrawerHeader(
    child: Material(),
  );

  ListTile getItem(Icon icon, String description, String route){
    return ListTile(
      leading: icon,
      title: Text(description),
      onTap: (){
        if (description == "cerrar"){
          Navigator.of(context).pop();//cerrarmos el widget actual

        }
        else{
          Navigator.pushNamed(context, route);
        }
      },
    );
  }
  ListView getList(){
    return ListView(
      children: <Widget>[
        header,
        getItem(Icon(Icons.movie), "Peliculas", '/'),
        new Divider(height: 3.4, color: Colors.grey,),
        getItem(Icon(Icons.live_tv), "Television", '/'),
        new Divider(height: 3.4, color: Colors.grey,),
        getItem(Icon(Icons.close), "Cerrar", '/')
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movies"),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.search, color: Colors.white), onPressed: () { }),
        ],
      ),
      drawer: new Drawer(child: getList(),),
      bottomNavigationBar: new BottomNavigationBar(items: _getFooterItems()),//Se agrego una barra de navegacion al final de la pantalla
      //body: ,
    );
  }
}

//son los items del drawer
List<BottomNavigationBarItem> _getFooterItems() {
  return [
    new BottomNavigationBarItem(icon: new Icon(Icons.thumb_up), title: new Text("movi1"), ),
    new BottomNavigationBarItem(icon: new Icon(Icons.refresh), title: new Text("Proximamente"), ),
    new BottomNavigationBarItem(icon: new Icon(Icons.star), title: new Text("mejor valoradas"), ),
  ];
}
