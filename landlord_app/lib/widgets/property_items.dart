import 'package:flutter/material.dart';

import '../models/functions.dart';

import '../widgets/property_icon.dart';

import '../dummy-data.dart';

class PropertyItems extends StatelessWidget {
  final _properties = PROPERTIES;
  final titleSize = 18.0;
  final smallTitleSize = 10.0;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
        itemCount: _properties.length,
        itemBuilder: (ctx, i) {
          return Container(
            decoration: BoxDecoration(
                border: Border(
                    right:
                        BorderSide(width: 3, color: _properties[i].color))),
            child: Column(
              children: <Widget>[
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Center(
                          child: PropertyIcon(
                            icon: _properties[i].icon,
                            backgroundColor: _properties[i].color,
                            size: 30,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 8.0,
                            bottom: 15,
                          ),
                          child: Text(
                            _properties[i].title,
                            style: TextStyle(
                              fontSize: titleSize,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            'VALUE OF ${_properties[i].percentOwned.toStringAsFixed(1)}% OWNED',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: smallTitleSize,
                            ),
                          ),
                        ),
                        Text(
                          '\$${Functions.formatCurrency(_properties[i].value)}',
                          style: TextStyle(
                            fontSize: titleSize,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            'RENT',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: smallTitleSize,
                            ),
                          ),
                        ),
                        Text(
                          '\$${Functions.formatCurrency(_properties[i].rent)}',
                          style: TextStyle(
                            fontSize: titleSize,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            'COST',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: smallTitleSize,
                            ),
                          ),
                        ),
                        Text(
                          '\$${Functions.formatCurrency(_properties[i].cost)}',
                          style: TextStyle(
                            fontSize: titleSize,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            'PROFIT LAST 7D',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: smallTitleSize,
                            ),
                          ),
                        ),
                        Text(
                          '\$${Functions.formatCurrency(_properties[i].profit)}',
                          style: TextStyle(
                            fontSize: titleSize,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}