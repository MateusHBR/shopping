import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:my_shopping/app/modules/home/home_controller.dart';
import 'package:my_shopping/app/shared/models/item_model.dart';
import './title_subtitle_item_widget.dart';

class ItemWidget extends StatelessWidget {
  final ItemModel item;
  final int index;
  final homeController = Modular.get<HomeController>();

  ItemWidget({this.item, this.index});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
      ),
      child: Container(
        margin: EdgeInsets.only(bottom: 15),
        padding: EdgeInsets.only(
          top: 20,
          left: 20,
          right: 20,
          bottom: 20,
        ),
        height: size.height * 0.32,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey[200],
          ),
          image: DecorationImage(
            image: AssetImage(
              '${item.image}',
            ),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                TitleSubtitleItemWidget(
                  title: item.title,
                  substitle: item.subtitle,
                ),
                Container(
                  height: 45,
                  width: 45,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey[200],
                    ),
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: Icon(item.isFavorite
                        ? Icons.favorite
                        : Icons.favorite_border),
                    onPressed: () {
                      homeController.toggleFavorite(index, item);
                    },
                  ),
                ),
              ],
            ),
            Text(
              'R\$ 400,00',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
