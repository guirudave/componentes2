import 'package:flutter/material.dart';


class CardPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina Cards'),
          
        ),
    body: ListView(
        children: <Widget>[
      SizedBox(height: 10.0,),
          _cardtipoa(),
          SizedBox(height: 20.0,),
          _cardtipob(),
          SizedBox(height: 20.0,),
               _cardtipoa(),
          SizedBox(height: 20.0,),
          _cardtipob(),
          SizedBox(height: 20.0,),     
          _cardtipoa(),
          SizedBox(height: 20.0,),
          _cardtipob(),
          SizedBox(height: 20.0,),
                            ],
                    
                    
                    
                        ),
                        );
                      }
                    
                     Widget _cardtipoa() {
                       return Card(
                         ///
                         elevation: 20.0,
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(25.0),
                           
                         ),
                        child: Column(
                          children: <Widget>[
                            ListTile(
                              leading: Icon(Icons.add_a_photo_sharp, color: Colors.orange),
                              title: Text('Titulo correspondiente'),
                              subtitle: Text ('Subtitulos'),
                              
                            ),
                            Row(
          
                              children: <Widget>[
                                //FlatButton(onPressed: onPressed, child: child)
                                TextButton(
                                  
          
                                  child: Text('Cancelar'),
                                  onPressed: (){
          
                                  },
                                ),
                                TextButton(
                                   child: Text('Enviar'),
                                onPressed: (){
          
                                },
                                )
                              ],
                            ),
              
                          ]
                  )
    
               );
          }
          
          Widget _cardtipob() {

              final card = Container(
                  child: Column(
                    //mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                     // Image(
                       // image:NetworkImage('https://fondosmil.com/fondo/17010.jpg'),

                      FadeInImage(
                        image: NetworkImage('https://fondosmil.com/fondo/17010.jpg'),
                        placeholder: AssetImage('assets/Box-Loading-2.gif'),
                        fadeInDuration: Duration(milliseconds: 200),
                        height: 300.0,
                        fit:BoxFit.cover,
                       // fit: BoxFit.fitWidth,
                    

                      ),
                      //),
                        Container(
                          padding: EdgeInsets.all(10.0),
                          child: Text('Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text')
                        )
                  
                    ],
                  ),
              );
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.white,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10.0,
                      spreadRadius: 2.0,
                      offset: Offset(2.0, 10.0),
                    )
                  ],
                ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: card,
                  ),
                  padding: const EdgeInsets.all(5.0),

                );
             


            }
}