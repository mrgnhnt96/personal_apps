import 'package:flutter/material.dart';
import 'package:landlord_app/dummy-data.dart';
import 'package:landlord_app/models/bank_item.dart';
import 'package:landlord_app/models/functions.dart';

import '../../widgets/bank_coin_items.dart';

class BuyCoinsScreen extends StatelessWidget {
  static const routeName = '/buy-coins';
  var _bankbankItems = DUMMY_BANK_ITEMS;

  Widget buildBankItem(
      String title, int coinAmount, double price, BuildContext ctx) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.blue,
          ),
          title: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              title,
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 11,
                letterSpacing: 1
              ),
            ),
          ),
          subtitle: Text(
            Functions.formatCurrency(coinAmount),
            style: TextStyle(
              color: Colors.black,
              fontSize: 17,
              fontWeight: FontWeight.bold,
              letterSpacing: 1
            ),
          ),
          trailing: ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Container(
              height: 30,
              child: RaisedButton(
                color: Colors.green,
                child: Text(
                  '\$${price.toStringAsFixed(2)}',
                  style: Theme.of(ctx).textTheme.subhead,
                ),
                onPressed: () {},
              ),
            ),
          ),
        ),
        Divider(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    'COIN BALANCE    ',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    '280',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Divider(
            height: 3,
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.attach_money,
                  color: Colors.yellow[800],
                ),
                Text(
                  'BUY COINS',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.attach_money,
                  color: Colors.yellow[800],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          // Flexible(
          //   child: ListView(
          //     children: _bankbankItems.map((bankItem) {
          //       BankCoinbankItem(bankItem);
          //     }).toList(),
          //   ),
          // ),
          Flexible(
            child: ListView(
              children: _bankbankItems
                  .map((item) => buildBankItem(
                      item.title, item.coinAmount, item.price, context))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
