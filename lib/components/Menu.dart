import 'package:flutter/material.dart';
import 'package:god_bank/properties_pt_br.dart' as properties;

class Menu extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Text('menu', style: TextStyle(fontSize: 24),),),
          ListTile(title: Text(properties.perfil),),
          ListTile(title: Text(properties.sobre),),
        ],
      ),
    );
  }

}