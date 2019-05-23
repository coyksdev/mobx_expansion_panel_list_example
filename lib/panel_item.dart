import 'package:mobx/mobx.dart';

part 'panel_item.g.dart';

class PanelItem = _PanelItem with _$PanelItem;

abstract class _PanelItem implements Store {
  String headerValue;
  List<String> expandedValue = [];

  @observable
  bool isExpanded = false;

  _PanelItem({this.headerValue, this.isExpanded, this.expandedValue});

  @action
  setIsExpanded(bool value) {
    isExpanded = value;
  }

  @action
  setExpandedValue(int index, String value) {
    expandedValue[index] = value;
  }

  @action
  addExpandedValue(String value) {
    expandedValue.add(value);
  }

  @action
  removeExpandedValue(int index) {
    expandedValue.removeAt(index);
  }
}
