// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller_category.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ControllerCategory on _ControllerCategoryBase, Store {
  final _$selectedCategoryAtom =
      Atom(name: '_ControllerCategoryBase.selectedCategory');

  @override
  int get selectedCategory {
    _$selectedCategoryAtom.reportRead();
    return super.selectedCategory;
  }

  @override
  set selectedCategory(int value) {
    _$selectedCategoryAtom.reportWrite(value, super.selectedCategory, () {
      super.selectedCategory = value;
    });
  }

  final _$_ControllerCategoryBaseActionController =
      ActionController(name: '_ControllerCategoryBase');

  @override
  void changeSelected(int i) {
    final _$actionInfo = _$_ControllerCategoryBaseActionController.startAction(
        name: '_ControllerCategoryBase.changeSelected');
    try {
      return super.changeSelected(i);
    } finally {
      _$_ControllerCategoryBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedCategory: ${selectedCategory}
    ''';
  }
}
