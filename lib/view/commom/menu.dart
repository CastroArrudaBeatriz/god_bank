import 'package:flutter/material.dart';

class Menu extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.orangeAccent),
            child: Text('menu', style: TextStyle(fontSize: 24, color: Colors.white),),),
          ListTile(title: Text('Perfil'),),
          ListTile(title: Text('Sobre'),),
        ],
      ),
    );
  }

}