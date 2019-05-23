import 'package:mobx/mobx.dart';

part 'report.g.dart';

class Report = _Report with _$Report;

abstract class _Report implements Store {
  DateTime date;

  @observable
  ObservableList<String> today = ObservableList<String>();

  @observable
  ObservableList<String> yesterday = ObservableList<String>();

  @observable
  ObservableList<String> impediments = ObservableList<String>();

  @action
  addToday(String value) {
    today.add(value);
  }

  @action
  addYesterday(String value) {
    yesterday.add(value);
  }

  @action
  addImpediments(String value) {
    impediments.add(value);
  }

  @computed
  toJSON() {
    final data = Map<String, dynamic>();
    data["today"] = today.cast<String>();
    data["yesterday"] = yesterday.cast<String>();
    data["impediments"] = impediments.cast<String>();
    return data;
  }
}
