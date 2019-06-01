import 'package:flutter/material.dart';

import 'aprender.dart';

class Home extends StatelessWidget {


  _aprender(BuildContext context){

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Aprender()),
    );
  }

  int _cIndex = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text("Proyectos Fluterianos"),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[],
        ),


      ),
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          
          crossAxisAlignment: CrossAxisAlignment.center,

          children: <Widget>[
            
            Image.asset("assets/images/home.jpg"),


            Container(
              padding: EdgeInsets.all(8.0),
              height: 100,
              width: 200,
              child: RaisedButton(
                child: Text("Aprender",style: TextStyle(fontSize: 30),),
                onPressed: ()=>_aprender(context),
              ),
            ),

            Container(

              padding: EdgeInsets.all(8.0),
              height:100,
            width: 200,
            child: RaisedButton(
              child: Text("Cooperar",style: TextStyle(fontSize: 30),),
            ),
            ),


            Container(
              padding: EdgeInsets.all(8.0),
              height:100,
              width: 200,

            decoration: BoxDecoration(

              color: const Color(0xff7c94b6),


            ),


            child: RaisedButton(
              child: Text("Trabajar",style: TextStyle(fontSize: 30),),



            ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(

        currentIndex: _cIndex,
        type: BottomNavigationBarType.shifting,
        items: [
      BottomNavigationBarItem(
      icon: Icon(Icons.add_to_home_screen ,color: Color.fromARGB(255, 0, 0, 0)),
        title: new Text('')
      ),

          BottomNavigationBarItem(
              icon: Icon(Icons.add_location ,color: Color.fromARGB(255, 0, 0, 0)),
              title: new Text('')
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.account_box ,color: Color.fromARGB(255, 0, 0, 0)),
              title: new Text('')
          ),

        ]
      ),

    );
  }
}
