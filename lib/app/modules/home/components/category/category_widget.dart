import 'package:flutter/material.dart';
import 'package:my_shopping/app/modules/home/components/category/item_category_widget.dart';

class CategoryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 30),
        children: <Widget>[
          ItemCategoryWidget(
            title: 'All',
            selected: true,
          ),
          ItemCategoryWidget(
            title: 'Sneakers',
          ),
          ItemCategoryWidget(
            title: 'Football',
          ),
          ItemCategoryWidget(
            title: 'Soccer',
          ),
          ItemCategoryWidget(
            title: 'Basketball',
          ),
        ],
      ),
    );
  }
}
