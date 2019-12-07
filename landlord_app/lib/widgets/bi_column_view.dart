import 'package:flutter/material.dart';

import '../widgets/badge.dart';

class BiColumnView extends StatelessWidget {
  final String title1;
  final String subtitle1;
  final String title2;
  final String subtitle2;
  final bool showButtons;

  BiColumnView({
    @required this.title1,
    @required this.subtitle1,
    @required this.title2,
    @required this.subtitle2,
    this.showButtons = false,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
          child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Badge(
              value: showButtons
                  ? Icon(
                      Icons.add,
                      size: 15,
                    )
                  : null,
              badgeColor: showButtons ? Colors.green : Colors.transparent,
              badgeSize: showButtons ? 1.0 : 0.0,
              topPosition: 37,
              rightPosition: 51,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      topLeft: Radius.circular(10),
                    ),
                    border: Border.all(
                      width: 1,
                      color: Colors.grey[300],
                    )),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Text(title1,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            letterSpacing: 1,
                          )),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          subtitle1,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Badge(
              value: showButtons
                  ? Icon(
                      Icons.add,
                      size: 15,
                    )
                  : null,
              badgeColor: showButtons ? Colors.green : Colors.transparent,
              badgeSize: showButtons ? 1.0 : 0.0,
              topPosition: 37,
              rightPosition: 73,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    border: Border.all(
                      width: 1,
                      color: Colors.grey[300],
                    )),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Text(title2,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            letterSpacing: 1,
                          )),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(subtitle2,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
