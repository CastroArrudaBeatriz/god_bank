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