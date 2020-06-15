import 'package:flutter/material.dart';
import 'package:god_bank/view/transferList/TransferList.dart';

void main() => runApp(GodBankApp());

class GodBankApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return  MaterialApp(
          home: TransferList()
      );
  }
}

