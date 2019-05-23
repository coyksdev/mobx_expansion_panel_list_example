// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$Report on _Report, Store {
  final _$todayAtom = Atom(name: '_Report.today');

  @override
  ObservableList<String> get today {
    _$todayAtom.reportObserved();
    return super.today;
  }

  @override
  set today(ObservableList<String> value) {
    _$todayAtom.context.checkIfStateModificationsAreAllowed(_$todayAtom);
    super.today = value;
    _$todayAtom.reportChanged();
  }

  final _$yesterdayAtom = Atom(name: '_Report.yesterday');

  @override
  ObservableList<String> get yesterday {
    _$yesterdayAtom.reportObserved();
    return super.yesterday;
  }

  @override
  set yesterday(ObservableList<String> value) {
    _$yesterdayAtom.context
        .checkIfStateModificationsAreAllowed(_$yesterdayAtom);
    super.yesterday = value;
    _$yesterdayAtom.reportChanged();
  }

  final _$impedimentsAtom = Atom(name: '_Report.impediments');

  @override
  ObservableList<String> get impediments {
    _$impedimentsAtom.reportObserved();
    return super.impediments;
  }

  @override
  set impediments(ObservableList<String> value) {
    _$impedimentsAtom.context
        .checkIfStateModificationsAreAllowed(_$impedimentsAtom);
    super.impediments = value;
    _$impedimentsAtom.reportChanged();
  }

  final _$_ReportActionController = ActionController(name: '_Report');

  @override
  dynamic addToday(String value) {
    final _$actionInfo = _$_ReportActionController.startAction();
    try {
      return super.addToday(value);
    } finally {
      _$_ReportActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic addYesterday(String value) {
    final _$actionInfo = _$_ReportActionController.startAction();
    try {
      return super.addYesterday(value);
    } finally {
      _$_ReportActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic addImpediments(String value) {
    final _$actionInfo = _$_ReportActionController.startAction();
    try {
      return super.addImpediments(value);
    } finally {
      _$_ReportActionController.endAction(_$actionInfo);
    }
  }
}
