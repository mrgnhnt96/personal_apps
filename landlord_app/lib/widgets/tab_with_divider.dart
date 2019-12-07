import 'package:flutter/material.dart';

class TabWithDivider extends StatelessWidget {
  final String text;

  TabWithDivider(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border(
          right: BorderSide(
            color: Colors.white,
            width: 1,
            style: BorderStyle.solid,
          ),
        ),
      ),
      child: Tab(
        text: text,
      ),
    );
  }
}