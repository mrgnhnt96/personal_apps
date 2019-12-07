import 'package:flutter/material.dart';

import '../../widgets/circle_avatar_with_border.dart';
import '../../widgets/bi_column_view.dart';
import '../../widgets/fill_bar.dart';
import '../../widgets/badge.dart';

class YourEmpireScreen extends StatelessWidget {
  static const routeName = '/your-empire';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Badge(
                  badgeColor: Colors.red[800],
                  badgeSize: 10,
                  value: Text(
                    '4',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                  child: CircleAvatarWithBorder(
                    shadowSize: 0,
                    borderColor: Colors.grey[300],
                    borderSize: 1,
                    child: Icon(
                      Icons.mail_outline,
                      color: Colors.grey[300],
                      size: 30,
                    ),
                  ),
                ),
                Badge(
                  badgeColor: Colors.blue[800],
                  topPosition: 35,
                  value: Text(
                    '40',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                  child: CircleAvatarWithBorder(
                    internalColor: Colors.purple,
                    shadowSize: 0,
                    borderColor: Colors.grey[300],
                    borderSize: 1,
                    child: Text(
                      'M',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
                Badge(
                  badgeColor: Colors.green,
                  topPosition: 35,
                  value: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 12,
                  ),
                  child: CircleAvatarWithBorder(
                    shadowSize: 0,
                    borderColor: Colors.grey[300],
                    borderSize: 1,
                    child: Text(
                      '289 \$',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'Morgan Hunt',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Text(
            'TOTAL EMPIRE VALUE',
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey,
              letterSpacing: 1,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            '\$82,779,836,238',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'PROPERTIES VALUE',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FillBar(
                '\$76,598,042,739',
                0.754,
                Theme.of(context).accentColor,
              ),
              CircleAvatarWithBorder(
                circleSize: 35,
                shadowSize: 0,
                borderColor: Colors.grey[300],
                child: Text(
                  '41',
                  style: TextStyle(
                    color: Colors.grey[300],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Need \$100,000,000 for next level',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                  letterSpacing: 1,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'CASH',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FillBar('\$6,181,793,499', 0.3),
              CircleAvatarWithBorder(
                  circleSize: 35,
                  shadowSize: 0,
                  borderSize: 0,
                  internalColor: Colors.green,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'LIMIT: \$11,000,000,000',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'REFILL CASH',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'REVENUE',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              BiColumnView(
                title1: 'PROFIT LAST 24HR',
                subtitle1: '\$537,922,729',
                title2: 'PROFIT LAST 7D',
                subtitle2: '\$4,601,843,276',
              ),
              CircleAvatarWithBorder(
                circleSize: 35,
                shadowSize: 0,
                borderSize: 0,
                internalColor: Colors.green,
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                'BOOST',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                  letterSpacing: 1,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          LayoutBuilder(builder: (ctx, constraints) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(
                  width: constraints.maxWidth * .3,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: RaisedButton(
                      elevation: 0,
                      padding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                      color: Colors.green,
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5.0),
                              child: Icon(
                                Icons.monetization_on,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                            Text(
                              'MARKETPLACE',
                              softWrap: false,
                              style: TextStyle(
                                fontSize: 11.5,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
                SizedBox(
                  width: constraints.maxWidth * .3,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: RaisedButton(
                      elevation: 0,
                      padding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                      color: Colors.green,
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5.0),
                              child: Icon(
                                Icons.attach_money,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                            Text(
                              'FREE COINS',
                              softWrap: false,
                              style: TextStyle(
                                fontSize: 11.5,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
                SizedBox(
                  width: constraints.maxWidth * .3,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: RaisedButton(
                      elevation: 0,
                      padding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                      color: Colors.green,
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5.0),
                              child: Icon(
                                Icons.layers,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                            Text(
                              'BUY PROPERTIES',
                              softWrap: false,
                              style: TextStyle(
                                fontSize: 11.5,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            );
          })
        ],
      ),
    );
  }
}
