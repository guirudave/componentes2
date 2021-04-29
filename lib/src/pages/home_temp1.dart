import 'package:flutter/material.dart';

class HomePagesTemp1 extends StatelessWidget {
   final opciones= ['Uno','Dos','Tres','Cuatro','Cinco','Seis','Siete','Ocho','Nueve','Diez'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listas') ,
        
        ),
        body: ListView(
         // children: _menuopciones()
          children: _itemsopciones1()
                    
                    ),
              );
            }
          
          List<Widget> _menuopciones() {

            List<Widget> lista =new List<Widget>();

            for(String opt in  opciones){
                final tempopt= ListTile(
                  title:Text(opt),
                );
                lista..add(tempopt);
                      //..add(Divider());
              lista.add(Divider());
            }
            return lista;

          }

          List<Widget> _itemsopciones1(){
            return opciones.map(( item ){
                return Column(
                  children: [
                    ListTile(
                      title:Text(item + ' !'),
                      subtitle: Text('Hola '),
                      leading: Icon(Icons.access_time),
                      trailing: Icon(Icons.keyboard_arrow_right),
                      onTap: (){},
                      
                    ),
                    Divider(),
                  ],
                );
            }).toList();
          }
}