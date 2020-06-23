import 'package:my_shopping/app/modules/cart/cart_module.dart';
import './modules/item/item_module.dart';
import 'package:my_shopping/app/modules/favorites/favorites_module.dart';

import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:my_shopping/app/app_widget.dart';
import 'package:my_shopping/app/modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: HomeModule()),
        Router('/item', module: ItemModule()),
        Router('/cart', module: CartModule()),
        Router('/favorites', module: FavoritesModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
