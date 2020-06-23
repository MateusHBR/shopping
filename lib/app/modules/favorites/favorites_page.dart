import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:my_shopping/app/modules/home/home_controller.dart';
import 'favorites_controller.dart';

class FavoritesPage extends StatefulWidget {
  final String title;
  const FavoritesPage({Key key, this.title = "Favorites"}) : super(key: key);

  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState
    extends ModularState<FavoritesPage, FavoritesController> {
  //use 'controller' variable to access controller
  final homeController = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: homeController.favorites.length,
        itemBuilder: (context, index) {
          return Text('${homeController.favorites[index].title}');
        },
      ),
    );
  }
}
