import 'package:mobx/mobx.dart';
import 'package:my_shopping/app/shared/models/item_model.dart';
import '../../shared/data/dummy_data.dart';
import '../../shared/models/item_model.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  ObservableList<ItemModel> productList = dumyProducts.asObservable();

  void toggleFavorite({ItemModel item}) {
    for (int i = 0; i < productList.length; i++) {
      if (item == productList[i]) {
        productList[i] = item.copyWith(isFavorite: !item.isFavorite);
      }
    }
  }
  // void toggleFavorite({int index, ItemModel item}) {
  //   productList[index] = item.copyWith(isFavorite: !item.isFavorite);
  //   print(favorites);
  // }

  @computed
  List<ItemModel> get favorites {
    return productList.where((element) => element.isFavorite).toList();
  }

  @observable
  ObservableList<ItemModel> inCart = <ItemModel>[].asObservable();

  @action
  void addInCart(ItemModel item) {
    inCart.add(item);
  }

  @action
  void removeInCart(int index) {
    inCart.removeAt(index);
  }
}
