import 'package:god_bank/view/transferForm/TransferForm.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TransferFormBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Criando tranferência'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: TransferForm(),
    );
  }

}