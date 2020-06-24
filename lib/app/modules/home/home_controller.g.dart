// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  Computed<List<ItemModel>> _$favoritesComputed;

  @override
  List<ItemModel> get favorites =>
      (_$favoritesComputed ??= Computed<List<ItemModel>>(() => super.favorites,
              name: '_HomeControllerBase.favorites'))
          .value;

  final _$productListAtom = Atom(name: '_HomeControllerBase.productList');

  @override
  ObservableList<ItemModel> get productList {
    _$productListAtom.reportRead();
    return super.productList;
  }

  @override
  set productList(ObservableList<ItemModel> value) {
    _$productListAtom.reportWrite(value, super.productList, () {
      super.productList = value;
    });
  }

  final _$inCartAtom = Atom(name: '_HomeControllerBase.inCart');

  @override
  ObservableList<ItemModel> get inCart {
    _$inCartAtom.reportRead();
    return super.inCart;
  }

  @override
  set inCart(ObservableList<ItemModel> value) {
    _$inCartAtom.reportWrite(value, super.inCart, () {
      super.inCart = value;
    });
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  void addInCart(ItemModel item) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.addInCart');
    try {
      return super.addInCart(item);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeInCart(int index) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.removeInCart');
    try {
      return super.removeInCart(index);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
productList: ${productList},
inCart: ${inCart},
favorites: ${favorites}
    ''';
  }
}
