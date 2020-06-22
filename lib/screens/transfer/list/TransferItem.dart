import 'package:god_bank/models/Transfer.dart';
import 'package:flutter/material.dart';
import '../../../properties_pt_br.dart' as properties;

class TransferItem extends StatelessWidget{

  final Transfer transfer;

  TransferItem(this.transfer);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(properties.listValorLabel + transfer.value.toString()),
        subtitle: Text(properties.listContaLabel + transfer.countNumber.toString()),
      ),
    );
  }

}