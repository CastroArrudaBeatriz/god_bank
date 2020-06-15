import 'package:flutter/material.dart';
import 'package:god_bank/components/TextEditor.dart';
import 'package:god_bank/controller/TransferControl.dart';

class TransferForm extends StatefulWidget{

  final TransferControl transferControl = new TransferControl();

  final TextEditingController _countNumberControl = new TextEditingController();
  final TextEditingController _valueControl = new TextEditingController();

  @override
  State<StatefulWidget> createState() {
    return TransferFormState();
  }
}


class TransferFormState extends State<TransferForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            TextEditor(controller: widget._countNumberControl,labelText: 'Número da conta',hintText: '0000',),

            TextEditor(controller: widget._valueControl, labelText: 'Valor',hintText: '0.00',icon: Icons.monetization_on,),

            const SizedBox(height: 20,),

            RaisedButton(
              child: const Text('transferir'),
              onPressed: () {
                widget.transferControl.formatTransfer(context, widget._countNumberControl, widget._valueControl);
              },
            )

          ],
        ),
      ),
    );
  }
}
