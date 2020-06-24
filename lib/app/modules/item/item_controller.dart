import 'package:mobx/mobx.dart';

part 'item_controller.g.dart';

class ItemController = _ItemControllerBase with _$ItemController;

abstract class _ItemControllerBase with Store {
  @observable
  ObservableList<int> tenisSize = <int>[38, 40, 42, 44].asObservable();

  @observable
  int selectedSize = 0;

  @action
  void changeSelected(int i) => selectedSize = i;
}
