import 'package:mobx/mobx.dart';
part 'controller_category.g.dart';

class ControllerCategory = _ControllerCategoryBase with _$ControllerCategory;

abstract class _ControllerCategoryBase with Store {
  @observable
  int selectedCategory = 0;

  @action
  void changeSelected(int i) => selectedCategory = i;
}
