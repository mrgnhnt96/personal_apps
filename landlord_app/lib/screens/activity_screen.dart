import 'package:flutter/material.dart';
import 'package:landlord_app/dummy-data.dart';

import '../widgets/main_drawer.dart';

class ActivityScreen extends StatelessWidget {
  static const routeName = '/activity';

  var _activityItems = ACTIVITY_ITEMS;

  Widget buildActivities(BuildContext context, String time, String message) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircleAvatar(
                  backgroundColor: Colors.purple,
                  child: Text('M', style: Theme.of(context).textTheme.title),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Morgan Hunt',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    time,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    padding: EdgeInsets.only(bottom: 15),
                    child: Text(
                      message,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Divider(
            height: 3,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Activity'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.filter_list),
            onPressed: () {},
          )
        ],
      ),
      drawer: MainDrawer(),
      body: ListView.builder(
        itemCount: _activityItems.length,
        itemBuilder: (ctx, item) => buildActivities(
          ctx,
          _activityItems[item].time,
          _activityItems[item].message,
        ),
      ),
    );
  }
}
