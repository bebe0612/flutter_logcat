import 'package:flutter/material.dart';
import 'package:flutter_logcat/json_view/src/utils/typer.dart';
import 'package:flutter_logcat/json_view/src/widgets/json_closed_ui_item.dart';
import 'package:flutter_logcat/json_view/src/widgets/json_list_ui_item.dart';

import '../../src.dart';

class JsonListBuilder extends StatefulWidget {
  const JsonListBuilder({
    Key? key,
    required this.jsonObj,
    required this.jsonViewTheme,
  }) : super(key: key);

  final List jsonObj;
  final JsonViewTheme jsonViewTheme;

  @override
  _JsonListBuilderState createState() => _JsonListBuilderState();
}

class _JsonListBuilderState extends State<JsonListBuilder> {
  bool isOpened = true;

  @override
  Widget build(BuildContext context) {
    final items = _buildJsonItems();
    if (items.isEmpty) return Text("[]");
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () => setState(() => isOpened = !isOpened),
          child: isOpened
              ? widget.jsonViewTheme.closeIcon
              : widget.jsonViewTheme.openIcon,
        ),
        Expanded(child: _buildItem(items)),
      ],
    );
  }

  Widget _buildItem(List<Widget> items) {
    if (!isOpened) {
      return ClosedJsonObjectItem(
        isList: true,
        jsonViewTheme: widget.jsonViewTheme,
        count: widget.jsonObj.length,
        type: Typer.getType(widget.jsonObj.first),
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items,
    );
  }

  List<Widget> _buildJsonItems() {
    return widget.jsonObj
        .map(
          (e) => JsonListItem(
            value: e,
            jsonViewTheme: widget.jsonViewTheme,
          ),
        )
        .toList();
  }
}
