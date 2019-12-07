import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class InviteFriendsScreen extends StatelessWidget {
  static const routeName = '/invite-friends';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('INVITE FRIENDS', style: Theme.of(context).textTheme.title,),
      ),
      body: Center(
        child: Text('Invite Friends Screen'),
      ),
      drawer: MainDrawer(),
    );
  }
}
