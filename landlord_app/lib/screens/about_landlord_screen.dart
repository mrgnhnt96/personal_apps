import 'package:flutter/material.dart';

import '../dummy-data.dart';

import '../widgets/main_drawer.dart';

class AboutLandlordScreen extends StatelessWidget {
  static const routeName = '/about-landlord';
  // var _aboutList = ABOUT_LANDLORD_LIST.toList();

  Widget buildButton({Icon icon, String label, Function handler}) {
    return InkWell(
      onTap: handler,
      borderRadius: BorderRadius.all(Radius.circular(10)),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(10),
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: icon,
            ),
            Text(
              label,
              textAlign: TextAlign.left,
              style: TextStyle(),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'FAQ & ABOUT',
          style: Theme.of(context).textTheme.title,
        ),
      ),
      drawer: MainDrawer(),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            buildButton(
              icon: Icon(Icons.info_outline),
              label: 'About Landlord',
              handler: () {},
            ),
            Divider(
              height: 3,
            ),
            buildButton(
              icon: Icon(Icons.security),
              label: 'Terms of service & privacy',
              handler: () {},
            ),
            Divider(
              height: 3,
            ),
            buildButton(
              icon: Icon(Icons.help_outline),
              label: 'Help',
              handler: () {},
            ),
            Divider(
              height: 3,
            ),
            buildButton(
              icon: Icon(Icons.headset_mic),
              label: 'Send Feedback',
              handler: () {},
            ),
            Divider(
              height: 3,
            ),
            buildButton(
              icon: Icon(Icons.chat_bubble_outline),
              label: 'Visit our forum',
              handler: () {},
            ),
            Divider(
              height: 3,
            ),
            buildButton(
              icon: Icon(Icons.thumb_up),
              label: 'Like us on Facebook',
              handler: () {},
            ),
            Divider(
              height: 3,
            ),
            buildButton(
              icon: Icon(Icons.exit_to_app),
              label: 'Log Out',
              handler: () {},
            ),
          ],
          // children: _aboutList.map((item) =>
          //   Column(
          //     children: <Widget>[
          //     buildButton(
          //     icon: item.icon,
          //     label: item.label,
          //     handler: item.handler,
          //   ),
          //   Divider(
          //     height: 3,
          //   ),
          //     ],
          //   )`®
          // ).toList(),
        ),
      ),
    );
  }
}
