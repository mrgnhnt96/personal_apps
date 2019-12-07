import 'package:flutter/material.dart';
import 'package:landlord_app/widgets/main_drawer.dart';

class RateAppScreen extends StatelessWidget {
  static const routeName = '/rate-app';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RATE APP', style: Theme.of(context).textTheme.title,),
      ),
      body: Center(
        child: Text('Rate App Screen'),
      ),
      drawer: MainDrawer(),
    );
  }
}
