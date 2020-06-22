import 'dart:convert';

import 'package:god_bank/models/Transfer.dart';
import 'file:///C:/Users/b.arruda.de.castro/IdeaProjects/god_bank/lib/components/Menu.dart';
import 'package:god_bank/screens/transfer/form/TransferFormBody.dart';
import 'package:god_bank/screens/transfer/list/TransferItem.dart';
import 'package:flutter/material.dart';
import '../../../properties_pt_br.dart' as properties;

class TransferList extends StatefulWidget {

  final List<Transfer> _transferList = List();

  @override
  State<StatefulWidget> createState() {
    return TransferListState();
  }

}


class TransferListState extends State<TransferList> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text(properties.appbarListLabel)
      ),

      drawer: Menu(),

      body: ListView.builder(
        itemCount: widget._transferList.length,
        itemBuilder: (context, index) {
          final transfer = widget._transferList[index];
          return TransferItem(transfer);
        },

      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {

          final Future<Transfer> future = Navigator.push(context, MaterialPageRoute(builder: (context) {
            return TransferFormBody();
          }));

          future.then((value) {
            debugPrint('clicou no botao confirmar e disparou then do future');
            debugPrint('$value'.toString());
            setState((){
              if(value != null){
                widget._transferList.add(value);
              }
            });
          });
        },
      ),
    );
  }

}


class TesteImageState extends State<TransferList>  {
  @override
  Widget build(BuildContext context) {
    String _imgString = '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';

    return Scaffold(
      appBar: AppBar(
          title: Text("Teste")
      ),
      body: Image.memory(
          Base64Decoder().convert(_imgString),
        fit: BoxFit.fill,
      ),
    );
  }

}