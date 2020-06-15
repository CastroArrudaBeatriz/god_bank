import 'package:flutter/material.dart';
import 'package:god_bank/controller/TransferControl.dart';
import 'package:god_bank/model/transfer.dart';
import 'package:god_bank/view/transferForm/TransferInputForm.dart';

class TransferForm extends StatelessWidget{

  final TransferControl transferControl = new TransferControl();

  final TextEditingController _countNumberControl = new TextEditingController();
  final TextEditingController _valueControl = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: <Widget>[
          TransferInputForm(controller: _countNumberControl,labelText: 'Número da conta',hintText: '0000',),

          TransferInputForm(controller: _valueControl, labelText: 'Valor',hintText: '0.00',icon: Icons.monetization_on,),

          const SizedBox(height: 20,),

          RaisedButton(
            child: const Text('transferir', style: TextStyle(fontSize: 18, color: Colors.white)),
            color: Colors.orangeAccent,
            onPressed: () {
              transferControl.formatTransfer(context, _countNumberControl, _valueControl);
            },
          )

        ],
      ),
    );
  }
}
