import 'package:flutter/material.dart';
import 'package:landlord_app/dummy-data.dart';
import 'package:landlord_app/models/functions.dart';
import 'package:landlord_app/widgets/circle_avatar_with_border.dart';
import 'package:landlord_app/widgets/property_icon.dart';

class PropertyDetails extends StatefulWidget {
  static const routeName = '/property-details';

  @override
  _PropertyDetailsState createState() => _PropertyDetailsState();
}

class _PropertyDetailsState extends State<PropertyDetails> {
  double _value = 100.0;

  Widget propertySlider(BoxConstraints constraints) {
    return Container(
      width: constraints.maxWidth * .6,
      child: Slider(
        value: _value,
        activeColor: Theme.of(context).accentColor,
        min: 0,
        max: 100,
        onChanged: (value) {
          setState(
            () {
              _value = value;
            },
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context).settings.arguments;
    final property = PROPERTIES.firstWhere((property) => property.id == id);

    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Icon(Icons.people),
            )
          ],
        ),
        body: LayoutBuilder(
          builder: (ctx, constraints) {
            return Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      height: constraints.maxHeight * .3,
                      width: double.infinity,
                      color: Colors.grey[300],
                    ),
                    Positioned(
                      width: constraints.maxWidth,
                      top: constraints.maxHeight * .05,
                      child: Column(
                        children: <Widget>[
                          PropertyIcon(
                            backgroundColor: property.color,
                            icon: property.icon,
                            size: 60,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            property.title,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            property.address,
                            style: TextStyle(
                              color: Colors.grey[500],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 1,
                        color: Colors.grey[500],
                      ),
                      top: BorderSide(
                        width: 1,
                        color: Colors.grey[500],
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Text(
                          'CASH BALANCE',
                          style: TextStyle(
                            color: Colors.grey[500],
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Text('\$7,781,490,378',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: RaisedButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: Colors.green,
                    child: Text(
                      'BUY',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: constraints.maxHeight * .2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Text('PRICE (INCL 8.9% TAX)',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.grey[500],
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1,
                                      )),
                                  Text(
                                      '\$${Functions.formatCurrency(property.value)}',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1,
                                      )),
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Text('ESTIMATED DAILY PROFIT',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.grey[500],
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1,
                                      )),
                                  Text(
                                      '\$${Functions.formatCurrency(property.rent)}',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1,
                                      )),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  if (property.coinValue != null)
                                    Text('COIN PRICE',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey[500],
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 1,
                                        )),
                                  if (property.coinValue != null)
                                    Text(property.coinValue.toString(),
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 1,
                                        )),
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Text('PERCENTAGE TO PURCHASE',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.grey[500],
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1,
                                      )),
                                  Text((100 - property.percentOwned).toString(),
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1,
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: constraints.maxHeight * .2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatarWithBorder(
                            borderColor: Colors.grey[500],
                            borderSize: 1,
                            internalColor: Colors.white,
                            circleSize: 35,
                            child: Icon(Icons.remove),
                            shadowSize: 5,
                          ),
                          propertySlider(constraints),
                          CircleAvatarWithBorder(
                            borderColor: Colors.grey[500],
                            borderSize: 1,
                            internalColor: Colors.white,
                            circleSize: 35,
                            child: Icon(Icons.add),
                            shadowSize: 5,
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            );
          },
        ));
  }
}
