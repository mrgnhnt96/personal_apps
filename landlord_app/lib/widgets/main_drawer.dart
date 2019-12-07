import 'package:flutter/material.dart';
import 'package:landlord_app/dummy-data.dart';

import '../screens/about_landlord_screen.dart';
import '../screens/invite_friends_screen.dart';
import '../screens/leaderboards_screen.dart';
import '../screens/market_place_screen.dart';
import '../screens/rate_app_screen.dart';
import '../screens/activity_screen.dart';
import '../screens/buy_land_screen.dart';
import '../screens/home_screen.dart';
import '../screens/bank_screen.dart';

class MainDrawer extends StatefulWidget {
  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  var _drawerItems = PAGE_NAMES.toList();
  var _selectedIndex = 0;

  Widget buildListTile(
    String title,
    IconData icon,
    String routeName,
    BuildContext ctx,
    int index,
    Color color,
  ) {
    return Container(
      color: _selectedIndex == index ? Colors.grey : color,
      child: ListTile(
        leading:
            Icon(icon, size: 26, color: Theme.of(ctx).textTheme.headline.color),
        title: Text(title, style: Theme.of(ctx).textTheme.headline),
        onTap: () {
          Navigator.of(ctx).pushReplacementNamed(
            routeName,
          );
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Theme.of(context).selectedRowColor,
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Column(
                  children: <Widget>[
                    Flexible(
                      child: ListView(
                        children: _drawerItems.map((item) {
                          return buildListTile(
                              item.title,
                              item.icon,
                              item.routeName,
                              context,
                              item.index,
                              item.title == 'FILL SURVEY'
                                  ? Colors.red[800]
                                  : Theme.of(context).selectedRowColor);
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  buildListTile(
                    'Invite Friends',
                    Icons.people,
                    InviteFriendsScreen.routeName,
                    context,
                    11,
                    Colors.green,
                  ),
                  buildListTile(
                    'Rate App',
                    Icons.star,
                    RateAppScreen.routeName,
                    context,
                    12,
                    Colors.green,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
