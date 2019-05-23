import 'package:mobx/mobx.dart';

part 'report_field_store.g.dart';

class ReportFieldStore = _ReportFieldStore with _$ReportFieldStore;

abstract class _ReportFieldStore implements Store {
  @observable
  bool enabled = true;

  _ReportFieldStore(this.enabled) : super();

  @action
  setEnabled(bool value) {
    enabled = value;
  }
}
