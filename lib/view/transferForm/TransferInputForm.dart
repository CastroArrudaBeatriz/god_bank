import 'package:flutter/material.dart';

class TransferInputForm extends StatelessWidget {

  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final IconData icon;

  TransferInputForm({this.controller, this.labelText, this.hintText, this.icon});

  @override
  Widget build(BuildContext context) {

    return  Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: controller,
        style: TextStyle(
            fontSize: 18.0
        ),
        decoration: InputDecoration(
            icon: icon != null ? Icon(icon) : null,
            labelText: labelText,
            hintText: hintText,
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }

}