import 'package:flutter/material.dart';
import 'package:landlord_app/screens/property_details.dart';

import '../widgets/property_icon.dart';
import '../widgets/main_drawer.dart';
import '../widgets/search_bar.dart';
import '../widgets/badge.dart';

import '../dummy-data.dart';

class BuyPropertiesScreen extends StatelessWidget {
  static const routeName = '/buy-properties';

  final _properties = PROPERTIES;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BUY PROPERTIES',
          style: Theme.of(context).textTheme.title,
        ),
      ),
      drawer: MainDrawer(),
      body: LayoutBuilder(
        builder: (context, constraints) => Container(
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 40,
                color: Theme.of(context).accentColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      width: constraints.maxWidth * .4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'PROPERTIES',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              letterSpacing: 1,
                            ),
                          ),
                          Text(
                            '115/120',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3.0),
                      child: VerticalDivider(
                        width: constraints.maxWidth * .1,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      width: constraints.maxWidth * .4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'PAPERWORK PENDING',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              letterSpacing: 1,
                            ),
                          ),
                          Text(
                            '0/5',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: SearchBar(
                  backgroundColor: Colors.grey[200],
                  placeHolder: 'Type a Property',
                  placeHolderColor: Colors.grey[800],
                ),
              ),
              SizedBox(
                height: 20,
                child: Stack(
                  children: <Widget>[
                    Container(
                      color: Colors.grey[400],
                    ),
                    Positioned(
                      right: 0,
                      top: 3,
                      child: Text(
                        'Powered by Fourquare',
                        style: TextStyle(
                          color: Colors.grey[500],
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              LimitedBox(
                maxHeight: constraints.maxHeight * .87,
                child: ListView.builder(
                  // itemCount: _properties.length,
                  itemCount: _properties.length,
                  padding: EdgeInsets.all(10),
                  itemBuilder: (ctx, i) {
                    final property = _properties[i];
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed(
                          PropertyDetails.routeName,
                          arguments: property.id,
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 1,
                              color: Colors.grey[300],
                            ),
                          ),
                        ),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Badge(
                                      badgeSize: 6,
                                      badgeColor: property.growth == true
                                          ? Colors.green
                                          : property.growth == false
                                              ? Colors.red
                                              : Colors.transparent,
                                      value: property.growth == true
                                          ? Icon(
                                              Icons.expand_less,
                                              size: 16,
                                            )
                                          : property.growth == false
                                              ? Icon(
                                                  Icons.expand_more,
                                                  size: 16,
                                                )
                                              : null,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                          top: 8.0,
                                          right: 5,
                                        ),
                                        child: PropertyIcon(
                                          icon: property.icon,
                                          backgroundColor: property.color,
                                          size: 30,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            property.title,
                                          ),
                                          if (property.address != null)
                                            Text(
                                              property.address,
                                              style: TextStyle(
                                                color: Colors.grey[600],
                                                fontSize: 12,
                                              ),
                                            ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Text(
                                      '${property.percentOwned}%',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'OWNED',
                                      style: TextStyle(
                                        color: Colors.grey[600],
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
