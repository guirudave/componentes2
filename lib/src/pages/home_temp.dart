import 'package:flutter/material.dart';

class HomePagesTemp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    //Estaticos
    return Scaffold(
      appBar: AppBar(
        title: Text('Listas') ,
        
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              title:Text('Hola uno'),
            
            ),
             Divider(),
            ListTile(
              title:Text('Hola dos'),
            ),
            Divider(),
            ListTile(
              title:Text('Hola tres'),
            ),
          ],
          
          ),
    );
  }
}