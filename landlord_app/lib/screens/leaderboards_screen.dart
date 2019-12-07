import 'package:flutter/material.dart';

import '../screens/leaderboard%20screens/leaderboard_national_screen.dart';
import '../screens/leaderboard%20screens/leaderboard_friends_screen.dart';
import '../screens/leaderboard%20screens/leaderboard_global_screen.dart';
import '../screens/leaderboard%20screens/leaderboard_local_screen.dart';

import '../widgets/tab_with_divider.dart';
import '../widgets/main_drawer.dart';

class LeaderboardsScreen extends StatelessWidget {
  static const routeName = '/leaderboards';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        drawer: MainDrawer(),
        appBar: AppBar(
          title: Text('LEADERBOARDS', style: Theme.of(context).textTheme.title,),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              color: Colors.white,
              onPressed: () {},
            )
          ],
          bottom: TabBar(
            unselectedLabelStyle: Theme.of(context).textTheme.display1,
            labelStyle: Theme.of(context).textTheme.subhead,
            indicator: BoxDecoration(),
            indicatorSize: TabBarIndicatorSize.tab,
            labelPadding: EdgeInsets.all(0),
            indicatorPadding: EdgeInsets.all(0),
            tabs: <Widget>[
              TabWithDivider('FRIENDS'),
              TabWithDivider('LOCAL'),
              TabWithDivider('NATIONAL'),
              Tab(text: 'GLOBAL'),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            LeaderboardFriendsScreen(),
            LeaderboardGlobalScreen(),
            LeaderboardNationalScreen(),
            LeaderboardLocalScreen(),
          ],
        ),
      ),
    );
  }
}
