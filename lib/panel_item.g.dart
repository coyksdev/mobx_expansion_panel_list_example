// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'panel_item.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$PanelItem on _PanelItem, Store {
  final _$isExpandedAtom = Atom(name: '_PanelItem.isExpanded');

  @override
  bool get isExpanded {
    _$isExpandedAtom.reportObserved();
    return super.isExpanded;
  }

  @override
  set isExpanded(bool value) {
    _$isExpandedAtom.context
        .checkIfStateModificationsAreAllowed(_$isExpandedAtom);
    super.isExpanded = value;
    _$isExpandedAtom.reportChanged();
  }

  final _$_PanelItemActionController = ActionController(name: '_PanelItem');

  @override
  dynamic setIsExpanded(bool value) {
    final _$actionInfo = _$_PanelItemActionController.startAction();
    try {
      return super.setIsExpanded(value);
    } finally {
      _$_PanelItemActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setExpandedValue(int index, String value) {
    final _$actionInfo = _$_PanelItemActionController.startAction();
    try {
      return super.setExpandedValue(index, value);
    } finally {
      _$_PanelItemActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic addExpandedValue(String value) {
    final _$actionInfo = _$_PanelItemActionController.startAction();
    try {
      return super.addExpandedValue(value);
    } finally {
      _$_PanelItemActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removeExpandedValue(int index) {
    final _$actionInfo = _$_PanelItemActionController.startAction();
    try {
      return super.removeExpandedValue(index);
    } finally {
      _$_PanelItemActionController.endAction(_$actionInfo);
    }
  }
}
