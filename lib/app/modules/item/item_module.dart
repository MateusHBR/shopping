import 'item_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'item_page.dart';

class ItemModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ItemController()),
      ];

  @override
  List<Router> get routers => [
        Router(
          Modular.initialRoute,
          child: (_, args) => ItemPage(
            item: args.data,
          ),
        ),
      ];

  static Inject get to => Inject<ItemModule>.of();
}
