import 'package:flutter/material.dart';

class Menu extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Text('menu', style: TextStyle(fontSize: 24),),),
          ListTile(title: Text('Perfil'),),
          ListTile(title: Text('Sobre'),),
        ],
      ),
    );
  }

}