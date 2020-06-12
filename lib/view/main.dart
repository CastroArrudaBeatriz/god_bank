import 'package:god_bank/view/transferForm/TransferFormBody.dart';
import 'package:flutter/material.dart';
import 'package:god_bank/view/transferList/TransferListBody.dart';

void main() => runApp(GodBankApp());

class GodBankApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return  MaterialApp(
          home: TransferFormBody()
      );
  }
}

