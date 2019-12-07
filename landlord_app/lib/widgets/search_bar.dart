import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final Color backgroundColor;
  final Color placeHolderColor;
  final String placeHolder;

  SearchBar({
    this.backgroundColor,
    this.placeHolder,
    this.placeHolderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              color: Theme.of(context).accentColor,
            ),
            hintText: placeHolder,
            hintStyle: TextStyle(
              color: placeHolderColor,
              height: 1,
            ),
            fillColor: backgroundColor,
            filled: true,
            border: InputBorder.none,
          ),
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
