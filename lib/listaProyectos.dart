import 'dart:io';

import 'package:flutter/material.dart';



List<_Proyecto> proyectos = [
  _Proyecto(
      "App de mascotas",
      "Requerimos realizar un app para las mascotas de la ciduad",
      "url",
      "assets/images/m1.JPG"),
  _Proyecto(
      "App de mascotas",
      "Requerimos realizar un app para las mascotas de la ciduad",
      "url",
      "assets/images/m2.JPG"),
  _Proyecto(
      "App de mascotas",
      "Requerimos realizar un app para las mascotas de la ciduad",
      "url",
      "assets/images/m3.JPG"),
];

class Listado extends StatefulWidget {
  @override
  _ListadoState createState() => _ListadoState();
}

class _ListadoState extends State<Listado> {
  var url = 'https://api.github.com/users/jomazao/repos';



  @override
  Widget build(BuildContext context) {
    //  _cargarProyectos();
    return Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: proyectos,
        ));
  }
}

class _Proyecto extends StatelessWidget {
  String titulo;
  String descripcion;
  String imagen;
  String link;

  _Proyecto(this.titulo, this.descripcion,  this.link,this.imagen);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: (){},
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 50,vertical: 7),
        child: (Column(
          children: <Widget>[
            Align(
                alignment: Alignment.center,
                child: Text(
                  titulo,
                  style: TextStyle(fontSize: 25,color: Colors.red,fontWeight: FontWeight.bold),
                )),
            Image(
              image: AssetImage(imagen),
            ),
            Text(descripcion)
          ],
        )),
      ),
    );
  }
}
