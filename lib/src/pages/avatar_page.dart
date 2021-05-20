import 'package:flutter/material.dart';

 class AvatarPage extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bienvenido Avatar !!'),
        actions: <Widget>[

          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://cdn.dribbble.com/users/1210339/screenshots/2767019/avatar18.gif'),
              radius: 25.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child:CircleAvatar(
              child: Text('AM'),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://pa1.narvii.com/6302/1f4678156781c60b0f16c1f47246d175ecefe6be_hq.gif'),
          placeholder: AssetImage('assets/Box-Loading-2.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}