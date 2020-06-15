import 'package:god_bank/screens/transfer/form/TransferForm.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../properties_pt_br.dart' as properties;

class TransferFormBody extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return TransferFormBodyState();
  }

}

class TransferFormBodyState extends State<TransferFormBody>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(properties.appbarFormLabel),
      ),
      body: TransferForm(),
    );
  }

}