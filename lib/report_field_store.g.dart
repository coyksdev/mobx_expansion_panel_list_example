// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_field_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$ReportFieldStore on _ReportFieldStore, Store {
  final _$enabledAtom = Atom(name: '_ReportFieldStore.enabled');

  @override
  bool get enabled {
    _$enabledAtom.reportObserved();
    return super.enabled;
  }

  @override
  set enabled(bool value) {
    _$enabledAtom.context.checkIfStateModificationsAreAllowed(_$enabledAtom);
    super.enabled = value;
    _$enabledAtom.reportChanged();
  }

  final _$_ReportFieldStoreActionController =
      ActionController(name: '_ReportFieldStore');

  @override
  dynamic setEnabled(bool value) {
    final _$actionInfo = _$_ReportFieldStoreActionController.startAction();
    try {
      return super.setEnabled(value);
    } finally {
      _$_ReportFieldStoreActionController.endAction(_$actionInfo);
    }
  }
}
