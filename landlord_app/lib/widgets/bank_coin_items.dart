import 'package:flutter/material.dart';
import 'package:landlord_app/models/bank_item.dart';

class BankCoinItem extends StatelessWidget {
  const BankCoinItem({
    Key key,
    @required List<BankItem> bankItems,
  }) : _bankItems = bankItems, super(key: key);

  final List<BankItem> _bankItems;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.blue,
      ),
      title: Text(
        _bankItems[0].title,
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      subtitle: Text(_bankItems[0].coinAmount.toString()),
      trailing: RaisedButton(
        child: Text(_bankItems[0].price.toString()),
        onPressed: () {},
      ),
    );
  }
}
