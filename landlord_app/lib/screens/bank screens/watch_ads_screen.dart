import 'package:flutter/material.dart';

class WatchAdsScreen extends StatelessWidget {
  static const routeName = '/watch-ads';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(height: 100),
                SizedBox(
                  width: 130,
                  child: Text(
                    'Looking for some coins?',
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 1.6,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'I have an offer you can\'t refuse!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Watch this short video and you will be granted!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                RaisedButton(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  color: Colors.green,
                  child: Container(
                    width: 150,
                    child: Text(
                      'WATCH VIDEO',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  onPressed: () {},
                ),
                Text(
                  'AVAILABLE VIDEOS: 5',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Icon(
              Icons.person,
              size: 300,
            )
          ],
        ),
      ),
    );
  }
}
