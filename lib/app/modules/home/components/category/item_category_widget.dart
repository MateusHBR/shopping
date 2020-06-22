import 'package:flutter/material.dart';

class ItemCategoryWidget extends StatelessWidget {
  final String title;
  final bool selected;

  const ItemCategoryWidget({
    @required this.title,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: AspectRatio(
        aspectRatio: 2 / 1,
        child: Container(
          decoration: BoxDecoration(
            color: selected
                ? Colors.grey[350]
                : Theme.of(context).scaffoldBackgroundColor,
            borderRadius: BorderRadius.circular(20),
          ),
          alignment: Alignment.center,
          child: Text(
            '$title',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
