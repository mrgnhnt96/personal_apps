import 'package:flutter/material.dart';

import '../screens/bank screens/buy_coins_screen.dart';
import '../screens/bank screens/watch_ads_screen.dart';

import '../widgets/tab_with_divider.dart';
import '../widgets/colored_tab_bar.dart';
import '../widgets/main_drawer.dart';

class BankScreen extends StatelessWidget {
  static const routeName = '/bank';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: MainDrawer(),
        appBar: AppBar(
          title: Text('BANK', style: Theme.of(context).textTheme.title,),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.refresh),
              color: Colors.white,
              onPressed: () {},
            )
          ],
          bottom: ColoredTabBar(
            tabBar: TabBar(
              unselectedLabelStyle: Theme.of(context).textTheme.display1,
              labelStyle: Theme.of(context).textTheme.subhead,
              indicator: BoxDecoration(),
              indicatorSize: TabBarIndicatorSize.tab,
              labelPadding: EdgeInsets.all(0),
              indicatorPadding: EdgeInsets.all(0),
              tabs: <Widget>[
                TabWithDivider('BANK'),
                Tab(
                  text: 'WATCH ADS',
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            BuyCoinsScreen(),
            WatchAdsScreen(),
          ],
        ),
      ),
    );
  }
}
