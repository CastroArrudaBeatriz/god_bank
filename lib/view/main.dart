import 'package:flutter/material.dart';
import 'package:god_bank/view/transferForm/TransferFormBody.dart';
import 'package:god_bank/view/transferList/TransferList.dart';

void main() => runApp(GodBankApp());

class GodBankApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return  MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.teal[400],
          accentColor:  Colors.tealAccent[400],
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.teal[400],
            textTheme: ButtonTextTheme.primary
          ),
        ),
        home: TransferList(),
      );
  }
}

