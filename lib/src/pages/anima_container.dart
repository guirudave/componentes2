import 'dart:math';

import 'package:flutter/material.dart';

class AnimaContainerPage extends StatefulWidget {
  

  @override
  _AnimaContainerPage createState() => _AnimaContainerPage();
}

class _AnimaContainerPage extends State<AnimaContainerPage> {
  
  double _width  = 50.0;
  double _height = 50.0;
  Color  _color  = Colors.green;

  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text('Anima Container'),

      ),
      body: Center(
            child: AnimatedContainer(
            duration: Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
            width:_width,
            height: _height,
            decoration: BoxDecoration(
              borderRadius: _borderRadius,
              color: _color
          ),
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: _playcontainer,
              ),
            );
          }
        
          
        
          void _playcontainer() {
            final random = Random();
          setState(() {
              _width     = random.nextInt(300).toDouble(); ///120
              _height    = random.nextInt(300).toDouble();/// 50
              _color     =Color.fromRGBO(
                random.nextInt(255),
                random.nextInt(255),
                random.nextInt(255),
                1                
                );
                
                _borderRadius  = BorderRadius.circular(random.nextInt(100).toDouble());
            });
  }
}