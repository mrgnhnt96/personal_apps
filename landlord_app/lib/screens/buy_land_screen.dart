import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class BuyLandScreen extends StatelessWidget {
  static const routeName = '/buy-land';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BUY LAND',
          style: Theme.of(context).textTheme.title,
        ),
      ),
      body: Text(
        'text',
        style: TextStyle(),
      ),
      drawer: MainDrawer(),
    );
  }
}
