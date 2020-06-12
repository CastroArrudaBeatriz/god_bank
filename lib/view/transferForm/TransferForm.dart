import 'package:flutter/material.dart';
import 'package:god_bank/model/transfer.dart';

class TransferForm extends StatelessWidget{

  final TextEditingController _countNumberControl = new TextEditingController();
  final TextEditingController _valueControl = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _countNumberControl,
              style: TextStyle(
                  fontSize: 24.0
              ),
              decoration: InputDecoration(
                labelText: 'Número da conta',
                hintText: '0000',
                labelStyle: TextStyle(color: Colors.orangeAccent)
              ),
              keyboardType: TextInputType.number,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _valueControl,
              style: TextStyle(
                  fontSize: 24.0
              ),
              decoration: InputDecoration(
                icon: Icon(Icons.monetization_on, color: Colors.orangeAccent,),
                labelText: 'valor',
                hintText: '0.00',
                labelStyle: TextStyle(color: Colors.orangeAccent)
              ),
              keyboardType: TextInputType.number,
            ),
          ),

          const SizedBox(height: 30,),

          RaisedButton(
            child: const Text('transferir', style: TextStyle(fontSize: 24, color: Colors.white)),
            color: Colors.orangeAccent,
            onPressed: () {

              int countNumber = int.tryParse(_countNumberControl.text);
              double value = double.tryParse(_valueControl.text);
              if(countNumber != null && value != null){

                final finalTransfer = Transfer(value, countNumber);

                Scaffold.of(context).showSnackBar(
                  SnackBar(
                    content: Text('$finalTransfer'.toString()),
                  )
                );
              }

            },
          )

        ],
      ),
    );
  }
}
