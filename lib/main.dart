import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:flutter/material.dart';
import 'package:mobx_expansion_panel_list_example/report_field.dart';
import 'package:mobx_expansion_panel_list_example/main_store.dart';
import 'package:mobx_expansion_panel_list_example/panel_item.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'Mobx ExpansionPanel';

  @override
  Widget build(BuildContext context) {
    MainStore store = MainStore();
    return MaterialApp(
      title: _title,
      home: Provider<MainStore>.value(
        value: store,
        child: Scaffold(
          appBar: AppBar(
            title: Text(_title),
            actions: <Widget>[
              FlatButton(
                child: Text(
                  'Save',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  print(store.report.toJSON());
                },
              ),
            ],
          ),
          body: MyStatefulWidget(),
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  MainStore store;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (store == null) {
      store = Provider.of<MainStore>(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: _buildPanel(),
      ),
    );
  }

  Widget _buildPanel() {
    return Observer(builder: (_) {
      return ExpansionPanelList(
        expansionCallback: (int index, bool isExpanded) {
          store.panelItem[index].setIsExpanded(!isExpanded);
        },
        children: store.panelItem.map(
          (PanelItem item) {
            return ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded) {
                return ListTile(
                  title: Text(item.headerValue),
                );
              },
              body: Container(
                padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Observer(
                  builder: (_) {
                    return Column(
                      children: item.expandedValue
                          .asMap()
                          .map((int index, String expandedValue) {
                            print(expandedValue);
                            return MapEntry(
                              index,
                              ReportField(
                                value: expandedValue,
                                enabled: false,
                                onSave: (String value) {
                                  if (value.isEmpty) {
                                    item.removeExpandedValue(index);
                                  } else {
                                    item.setExpandedValue(index, value);
                                  }
                                },
                                onDelete: () {
                                  item.removeExpandedValue(index);
                                },
                              ),
                            );
                          })
                          .values
                          .toList()
                            ..add(
                              ReportField(
                                enabled: true,
                                onSave: (value) {
                                  item.addExpandedValue(value);
                                },
                              ),
                            ),
                    );
                  },
                ),
              ),
              isExpanded: item.isExpanded,
            );
          },
        ).toList(),
      );
    });
  }
}
