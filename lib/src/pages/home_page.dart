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
      drawer: menulateral(),
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
  class menulateral extends  StatelessWidget {
          @override
          Widget build(BuildContext context) {
            return new Drawer(
              child: ListView(
                children: <Widget>[
                  new UserAccountsDrawerHeader(
                    accountName: Text('Alejandro Maya'), 
                    accountEmail: Text('david.maya@umb.mx'),
                    decoration: BoxDecoration(
                      image: DecorationImage( 
                        image: NetworkImage('https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/e286b842-4d72-403d-bc79-22e51f3e5ae3/d6ce8fr-ed508822-d927-4f85-bcca-f89e52230a9e.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2UyODZiODQyLTRkNzItNDAzZC1iYzc5LTIyZTUxZjNlNWFlM1wvZDZjZThmci1lZDUwODgyMi1kOTI3LTRmODUtYmNjYS1mODllNTIyMzBhOWUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.9vC9FHPPWdWyvNS65NECULlXqiNw44Y6Nbsjth9_Vmk'),
                        fit: BoxFit.cover

                      )
                    ),
                    ),
                    Ink(
                      color: Colors.indigo,
                      child: new ListTile(
                        title: Text('App Menu',
                        style: TextStyle(color: Colors.white),
                        )

                      ),
                    ),

                    new ListTile(
                      title: Text('Menu1',
                      style:TextStyle(color: Colors.indigo),
                      ),
                    ),
                     new ListTile(
                      title: Text('Menu2'),
                    ),
                    //_lista(),
                ],
              ),
            );
          }

        }