// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ItemController on _ItemControllerBase, Store {
  final _$tenisSizeAtom = Atom(name: '_ItemControllerBase.tenisSize');

  @override
  ObservableList<int> get tenisSize {
    _$tenisSizeAtom.reportRead();
    return super.tenisSize;
  }

  @override
  set tenisSize(ObservableList<int> value) {
    _$tenisSizeAtom.reportWrite(value, super.tenisSize, () {
      super.tenisSize = value;
    });
  }

  final _$selectedSizeAtom = Atom(name: '_ItemControllerBase.selectedSize');

  @override
  int get selectedSize {
    _$selectedSizeAtom.reportRead();
    return super.selectedSize;
  }

  @override
  set selectedSize(int value) {
    _$selectedSizeAtom.reportWrite(value, super.selectedSize, () {
      super.selectedSize = value;
    });
  }

  final _$_ItemControllerBaseActionController =
      ActionController(name: '_ItemControllerBase');

  @override
  void changeSelected(int i) {
    final _$actionInfo = _$_ItemControllerBaseActionController.startAction(
        name: '_ItemControllerBase.changeSelected');
    try {
      return super.changeSelected(i);
    } finally {
      _$_ItemControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
tenisSize: ${tenisSize},
selectedSize: ${selectedSize}
    ''';
  }
}
