import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:componentes2/src/routes/routes.dart';
import 'package:componentes2/src/pages/alert_page.dart';
//import 'package:componentes2/src/pages/avatar_page.dart';
//import 'package:componentes2/src/pages/home_page.dart';

///Librerias Componentes Autor
//import 'package:componentes2/src/pages/home_temp.dart';
//import 'package:componentes2/src/pages/home_temp1.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'), // English
        const Locale('es', 'ES'),
      ],
      theme: ThemeData(
    primarySwatch: Colors.red,
  ),

      //home:  HomePagesTemp()   
     // home:HomePagesTemp1()
      //home:HomePage()
      //
      initialRoute: '/',
      /*routes :<String, WidgetBuilder>{
        '/'           : (BuildContext context) =>  HomePage(),
        'alert'       : (BuildContext context) => AlertPage(),
        'avatar'      : (BuildContext context) => AvatarPage(),
      },*/

      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings){
          print('Has Presionada: ${settings.name}');

          return MaterialPageRoute(
            builder: (BuildContext context) => AlertPage());
          },
    );
  }
}