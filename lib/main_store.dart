import 'package:mobx/mobx.dart';
import 'package:mobx_expansion_panel_list_example/panel_item.dart';
import 'package:mobx_expansion_panel_list_example/report.dart';

part 'main_store.g.dart';

class MainStore = _MainStore with _$MainStore;

abstract class _MainStore implements Store {
  Report report;

  List<PanelItem> panelItem = [];

  _MainStore() {
    report = Report();

    panelItem.addAll([
      PanelItem(
        headerValue: 'What I did yesterday?',
        isExpanded: true,
        expandedValue: report.today,
      ),
      PanelItem(
        headerValue: 'What I did today?',
        isExpanded: false,
        expandedValue: report.yesterday,
      ),
      PanelItem(
        headerValue: 'What are my impediments?',
        isExpanded: false,
        expandedValue: report.impediments,
      ),
    ]);
  }
}
