//simport 'package:componentes2/src/pages/alert_page.dart';
import 'package:flutter/material.dart';
import 'package:componentes2/src/providers/menu_provider.dart';
import 'package:componentes2/src/utils/icon_utils.dart';



//libreriprovider

class HomePage extends StatelessWidget{



@override
 Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: Text('Componenetes'),
        
      ),
body: _lista(),
   );
 }

  Widget _lista() {

      //print(menuProvider.opciones);
      return FutureBuilder(
        future: menuProvider.cargarData(),
        initialData: [],
        builder: ( context, AsyncSnapshot <List<dynamic>>snapshot ){

      return ListView(
            children: _listaopciones(snapshot.data,context),
          );
        },
      );

   
        }
      
      List<Widget>  _listaopciones(List<dynamic> data, BuildContext context) {

          final List <Widget> opciones =[];
              data.forEach((opt) { 
                  final widgetTemp=ListTile(
                    title: Text(opt['texto']),
                    //leading: Icon(Icons.account_circle,color: Colors.blue,),
                    leading: getIcon(opt['icon']),
                    trailing: Icon(Icons.keyboard_arrow_right,color: Colors.red),
                    onTap: (){
                     /*   final route = MaterialPageRoute(
                          builder:  (context) {
                            return AlertPage();
                          } 
                          
                          
                          );*/ 
                          //Navigator.push(context, route);
                          Navigator.pushNamed(context, opt['ruta']);
                    },
                  );
                opciones..add(widgetTemp)
                 ..add(Divider());

              });
              return opciones;

      }
}