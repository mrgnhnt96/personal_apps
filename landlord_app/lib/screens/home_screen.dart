import 'package:flutter/material.dart';
import 'package:landlord_app/widgets/colored_tab_bar.dart';

import './home screens/your_skills_screen.dart';
import './home screens/your_empire_screen.dart';
import './home screens/portfolio_screen.dart';

import '../widgets/tab_with_divider.dart';
import '../widgets/main_drawer.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        drawer: MainDrawer(),
        appBar: AppBar(
          title: Text(
            'DASHBOARD',
            style: Theme.of(context).textTheme.title,
          ),
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
                TabWithDivider('PORTFOLIO'),
                TabWithDivider('YOUR EMPIRE'),
                Tab(
                  text: 'YOUR SKILLS',
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            PortfolioScreen(),
            YourEmpireScreen(),
            YourSkillsScreen(),
          ],
        ),
      ),
    );
  }
}
