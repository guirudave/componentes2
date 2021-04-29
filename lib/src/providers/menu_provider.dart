
import 'package:flutter/services.dart' show rootBundle;

import 'dart:convert';

class _MenuProvider{
  List<dynamic> opciones=[];

  _MenuProvider(){
   // cargarData();
      }
    
      /* cargarData() {
         rootBundle.loadString('data/menu_opts.json')
         .then((data) {

           Map dateMap= json.decode(data);
           //print( dateMap['texto']);
           opciones=dateMap['rutas'];
          // print(opciones);

         });



       }*/
      Future<List<dynamic>> cargarData() async{
        final resp= await rootBundle.loadString('data/menu_opts.json');
         
           Map dateMap= json.decode(resp);
           //print( dateMap['texto']);
           opciones=dateMap['rutas'];
          print(opciones);

         

          return opciones;

       }

}

final menuProvider =_MenuProvider();