import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_expansion_panel_list_example/report_field_store.dart';

class ReportField extends StatefulWidget {
  final String value;
  final Function onSave;
  final Function onDelete;
  final bool enabled;

  ReportField({Key key, this.value, this.enabled, this.onSave, this.onDelete})
      : super(key: key);

  @override
  _ReportFieldState createState() => _ReportFieldState();
}

class _ReportFieldState extends State<ReportField> {
  ReportFieldStore store;
  TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    store = ReportFieldStore(widget.enabled);
    _controller = TextEditingController(text: widget.value);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Observer(
            builder: (_) => Expanded(
                  child: TextField(
                    controller: _controller,
                    enabled: store.enabled,
                  ),
                ),
          ),
          Observer(builder: (_) {
            if (store.enabled) {
              return Container(
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.save),
                      onPressed: () {
                        store.setEnabled(false);
                        widget.onSave(_controller.text);
                      },
                    ),
                  ],
                ),
              );
            } else {
              return Container(
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: () => store.setEnabled(true),
                    ),
                    IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        widget.onDelete();
                        store.setEnabled(true);
                        _controller.text = '';
                      },
                    ),
                  ],
                ),
              );
            }
          })
        ],
      ),
    );
  }
}
