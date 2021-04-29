import 'package:flutter/material.dart';
//Librerias Paquetes Usuarios
import 'package:componentes2/src/pages/alert_page.dart';
import 'package:componentes2/src/pages/avatar_page.dart';
import 'package:componentes2/src/pages/home_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes(){

  return <String,  WidgetBuilder>{
        '/'           : (BuildContext context) =>  HomePage(),
        'alert'       : (BuildContext context) =>  AlertPage(),
        'avatar'      : (BuildContext context) =>  AvatarPage(),

  };

}