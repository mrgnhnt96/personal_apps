import 'package:flutter/material.dart';

class LeaderboardGlobalScreen extends StatelessWidget {
  static const routeName = '/leaderboard/global';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
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
