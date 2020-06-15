import 'package:flutter/material.dart';
import 'package:god_bank/models/Transfer.dart';

class TransferControl {

  TransferControl();

  void formatTransfer(BuildContext context, TextEditingController _countNumberControl, TextEditingController _valueControl){

    int countNumber = int.tryParse(_countNumberControl.text);
    double value = double.tryParse(_valueControl.text);
    if(countNumber != null && value != null){
      final finalTransfer = Transfer(value, countNumber);
      Navigator.pop(context, finalTransfer);
    }
  }

}