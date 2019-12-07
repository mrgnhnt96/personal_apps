import 'package:flutter/material.dart';

import '../../widgets/bi_column_view.dart';
import '../../widgets/property_items.dart';
import '../../widgets/search_bar.dart';


class PortfolioScreen extends StatelessWidget {
  static const routeName = '/portfolio';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 35,
            ),
            child: SearchBar(
              backgroundColor: Colors.grey[300],
              placeHolder: 'Type a property name',
              placeHolderColor: Colors.grey[400],
            ),
          ),
          BiColumnView(
            title1: 'PROPERITIES SLOTS',
            subtitle1: '115/120',
            title2: 'PAPERWORK PENDING',
            subtitle2: '1/5',
            showButtons: true,
          ),
          SizedBox(
            height: 20,
          ),
          PropertyItems(),
        ],
      ),
    );
  }
}
