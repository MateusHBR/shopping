import 'package:mobx/mobx.dart';

part 'item_controller.g.dart';

class ItemController = _ItemControllerBase with _$ItemController;

abstract class _ItemControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}