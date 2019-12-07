import 'package:flutter/material.dart';

class LeaderboardFriendsScreen extends StatelessWidget {
  static const routeName = '/leaderboard/friends';
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              'SWIPE TO REMOVE FRIEND, CLICK TO VIEW PORTFOLIO',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11),
            ),
          ),
          Flexible(
            child: ListView.separated(
              itemCount: 20,
              
              itemBuilder: (ctx, i) => SizedBox(
                height: 20,
              ),
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(),
            ),
          ),
        ],
      ),
    );
  }
}
