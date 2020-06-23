import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class BarWidget extends StatelessWidget {
  final bool favoriteItem;

  BarWidget({@required this.favoriteItem});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Modular.to.pop();
          },
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
            icon: Icon(favoriteItem ? Icons.favorite : Icons.favorite_border),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
