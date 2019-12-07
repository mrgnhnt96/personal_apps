import 'package:flutter/material.dart';

import '../../widgets/circle_avatar_with_border.dart';
import '../../widgets/fill_bar.dart';

import '../../dummy-data.dart';

class YourSkillsScreen extends StatefulWidget {
  static const routeName = '/your-skills';
  @override
  _YourSkillsScreenState createState() => _YourSkillsScreenState();
}

class _YourSkillsScreenState extends State<YourSkillsScreen> {
  var _mySkills = MY_SKILLS;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _mySkills.length,
      itemBuilder: (ctx, index) => LayoutBuilder(
        builder: (ctx, constraints) {
          return Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 100,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Text(
                              _mySkills[index].title,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 8.0,
                            ),
                            child: Text(
                              _mySkills[index].description,
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey[600],
                              ),
                            ),
                          ),
                          FillBar(_mySkills[index].amountOwned.toString(),
                              _mySkills[index].amountOwned / 30),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0, bottom: 15),
                      child: CircleAvatarWithBorder(
                        circleSize: 30,
                        borderColor: Colors.grey[600],
                        child: Text(
                          '+${_mySkills[index].increment.toString()}',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 7),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: RaisedButton(
                          elevation: 0,
                          padding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                          color: Colors.green,
                          child: Container(
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.attach_money,
                                  color: Colors.yellow,
                                  size: 25,
                                ),
                                Text(
                                  _mySkills[index].cost.toString(),
                                  softWrap: false,
                                  style: TextStyle(
                                    fontSize: 16,
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
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
