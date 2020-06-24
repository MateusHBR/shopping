import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:my_shopping/app/modules/home/components/category/controller_category.dart';
import 'package:my_shopping/app/modules/home/components/category/item_category_widget.dart';

class CategoryWidget extends StatelessWidget {
  final controllerCategory = Modular.get<ControllerCategory>();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Observer(
        builder: (_) {
          return ListView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 30),
            children: <Widget>[
              ItemCategoryWidget(
                title: 'All',
                selected:
                    controllerCategory.selectedCategory == 0 ? true : false,
                function: () {
                  controllerCategory.changeSelected(0);
                },
              ),
              ItemCategoryWidget(
                title: 'Sneakers',
                selected:
                    controllerCategory.selectedCategory == 1 ? true : false,
                function: () {
                  controllerCategory.changeSelected(1);
                },
              ),
              ItemCategoryWidget(
                title: 'Football',
                selected:
                    controllerCategory.selectedCategory == 2 ? true : false,
                function: () {
                  controllerCategory.changeSelected(2);
                },
              ),
              ItemCategoryWidget(
                title: 'Soccer',
                selected:
                    controllerCategory.selectedCategory == 3 ? true : false,
                function: () {
                  controllerCategory.changeSelected(3);
                },
              ),
              ItemCategoryWidget(
                title: 'Basketball',
                selected:
                    controllerCategory.selectedCategory == 4 ? true : false,
                function: () {
                  controllerCategory.changeSelected(4);
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
