import 'package:flutter/material.dart';

 class AlertPage extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bienvenido a la Pagina Alertass'),

      ),
      body: Center(

          child: ElevatedButton(
            child:Text('Preioname'),
            onPressed: () => _mostrar_alerta(context),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                          shape: StadiumBorder()
                        ),
                   ) ,
                 ),
                 floatingActionButton: FloatingActionButton(
                  child: Icon(Icons.backpack),
                  onPressed: (){
                    Navigator.pop(context);
                  },
              ),
            );
           }
            
            void _mostrar_alerta(BuildContext context) {
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (context) {
                    return AlertDialog(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                      title: Text('Titulo'),
                      content: Column(
                         mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                        Text('All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary'),
                        FlutterLogo(size: 50.0)
                        ],
                      ),
                      actions: <Widget>[
                        TextButton(
                          
                          child: Text('Cancelar'),
                          onPressed: () => Navigator.of(context).pop(),
                        ),
                        TextButton(
                          child: Text('Enviar'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  }
                );

              }
}