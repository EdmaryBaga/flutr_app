import 'package:flutter/material.dart';

//El stateles es un widget sin estado de datos, es decir no matiene los datos
void main(){runApp(
  MaterialApp(
    home: myApp(),
  )
);
}
class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //all widget tiene un Context para ser identificado en el tree de flutter
    return Scaffold(
      appBar: AppBar(
        title: Text("Statelesswidget"),
      ),
      body: Container(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,//acemos que utilice all ancho de la panralla del dispositivo
            children: <Widget>[
              Card(
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      Text("item",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                      ),
                      Icon( Icons.favorite, color: Colors.red,),
                    ],
                  ),
                )
              )
            ],
          ),
        ),
      ),
    );
  }

}




