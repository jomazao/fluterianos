import 'package:flutter/material.dart';

import 'aprender.dart';

class Home extends StatelessWidget {


  _aprender(BuildContext context){

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Aprender()),
    );
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Proyectos Fluterianos"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            RaisedButton(
              child: Text("Aprender"),
              onPressed: ()=>_aprender(context),
            ),
            RaisedButton(
              child: Text("Cooperar"),
            ),
            RaisedButton(
              child: Text("Trabajar"),
            )
          ],
        ),
      ),
    );
  }
}
