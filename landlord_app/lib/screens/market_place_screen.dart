import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class MarketPlaceScreen extends StatelessWidget {
  static const routeName = '/market-place';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MARKET PLACE', style: Theme.of(context).textTheme.title,),
      ),
      body: Center(
        child: Text('Market Place Screen'),
      ),
      drawer: MainDrawer(),
    );
  }
}