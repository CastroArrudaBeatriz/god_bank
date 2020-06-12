import 'package:god_bank/view/commom/menu.dart';
import 'package:god_bank/view/transferList/TransferList.dart';
import 'package:flutter/material.dart';

class TransferListBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transferências'),
        backgroundColor: Colors.orangeAccent,
      ),
      drawer: Menu(),
      body: TransferList(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.orangeAccent,
      ),
    );
  }

}