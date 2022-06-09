

import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'sidebar_parqueo.dart';

class CategoriesParqueo extends StatelessWidget {
  const CategoriesParqueo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SidebarParqueo(
      title: "Pisos de Parqueo",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Category(
            title: 'Semisotano',
            //numOfItems: 1,
            press: () {},
          ),
          Category(
            title: 'Sotano',
            //numOfItems: 1,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String title;
  final int numOfItems;
  final VoidCallback press;
  const Category({
    Key key,
    @required this.title,
    @required this.numOfItems,
    @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
      child: TextButton(
        onPressed: () {},
        child: Text.rich(
          TextSpan(
            text: title,
            style: TextStyle(color: kDarkBlackColor),
            children: [
              TextSpan(
                text: " ($numOfItems)",
                style: TextStyle(color: kBodyTextColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
