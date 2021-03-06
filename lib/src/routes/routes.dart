import 'package:flutter/material.dart';
//Librerias Paquetes Usuarios
import 'package:componentes2/src/pages/alert_page.dart';
import 'package:componentes2/src/pages/avatar_page.dart';
import 'package:componentes2/src/pages/home_page.dart';
import 'package:componentes2/src/pages/card_page.dart';
import 'package:componentes2/src/pages/anima_container.dart';
import 'package:componentes2/src/pages/input_page.dart';
import 'package:componentes2/src/pages/listview_page.dart';
import 'package:componentes2/src/pages/slider_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes(){

  return <String,  WidgetBuilder>{
        '/'           : (BuildContext context) =>  HomePage(),
        'alert'       : (BuildContext context) =>  AlertPage(),
        'avatar'      : (BuildContext context) =>  AvatarPage(),
        'card'        : (BuildContext context) => CardPage(),
        'animatedContainer'  : (BuildContext context) => AnimaContainerPage(),
        'inputs'      : ( BuildContext context ) => InputPage(),
        'slider' : ( BuildContext context ) => SliderPage(),
      'list'   : ( BuildContext context ) => ListaPage(),
  };

}