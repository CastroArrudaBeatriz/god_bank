import 'package:god_bank/controller/TransferControl.dart';
import 'package:god_bank/model/transfer.dart';
import 'package:god_bank/view/commom/menu.dart';
import 'package:god_bank/view/transferForm/TransferFormBody.dart';
import 'package:god_bank/view/transferList/TransferItem.dart';
import 'package:flutter/material.dart';

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
        title: Text('Transferências'),
        backgroundColor: Colors.orangeAccent,
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
        backgroundColor: Colors.orangeAccent,
        onPressed: () {

          final Future<Transfer> future = Navigator.push(context, MaterialPageRoute(builder: (context) {
            return TransferFormBody();
          }));

          future.then((value) {
            debugPrint('clicou no botao confirmar e disparou then do future');
            debugPrint('$value'.toString());
            widget._transferList.add(value);
            setState((){});
          });
        },
      ),
    );
  }

}