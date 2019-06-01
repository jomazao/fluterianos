import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutterianos/utils/ReqRes.dart';
import 'package:http/http.dart' as http;

List<_Proyecto> proyectos = [
  _Proyecto(
      "App de mascotas",
      "Requerimos realizar un app para las mascotas de la ciduad",
      "assets/images/m1.JPG",
      "https://github.com/jomazao/fluterianos"),
  _Proyecto(
      "App de mascotas",
      "Requerimos realizar un app para las mascotas de la ciduad",
      "assets/images/m2.JPG",
      "https://github.com/jomazao/fluterianos"),
  _Proyecto(
      "App de mascotas",
      "Requerimos realizar un app para las mascotas de la ciduad",
      "assets/images/m1.JPG",
      "https://github.com/jomazao/fluterianos"),


];

class ListadoTrabajos extends StatefulWidget {
  @override
  _ListadoState createState() => _ListadoState();
}

class _ListadoState extends State<ListadoTrabajos> {
  var url = 'https://api.github.com/users/jomazao/repos';

  _cargarProyectos() async {
    var response = await http.get(
      url, /* headers: {HttpHeaders.authorizationHeader: "token f483dfe2d3016a25a15750a4f9f8d0ce50af4a13"}*/
    );
    print(response);
  }

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

  _Proyecto(this.titulo, this.descripcion, this.imagen, this.link);

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
