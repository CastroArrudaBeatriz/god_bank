import 'package:god_bank/model/transfer.dart';
import 'package:flutter/material.dart';

import 'TransferItem.dart';

class TransferList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransferItem(new Transfer(100.0, 339899)),
        TransferItem(new Transfer(150.0, 339899)),
        TransferItem(new Transfer(500.0, 339899)),
      ],
    );
  }
}


