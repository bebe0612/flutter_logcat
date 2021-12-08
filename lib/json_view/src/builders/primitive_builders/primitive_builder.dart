import 'package:flutter/material.dart';
import 'package:flutter_logcat/json_view/src/widgets/json_ui_primitive_item.dart';

import '../../src.dart';

class PrimitiveBuilder extends StatelessWidget {
  const PrimitiveBuilder(this.jsonObj, {required JsonViewTheme jsonViewTheme})
      : _jsonViewTheme = jsonViewTheme;

  final dynamic jsonObj;
  final JsonViewTheme _jsonViewTheme;

  @override
  Widget build(BuildContext context) {
    return _renderJsonWidgets();
  }

  Widget _renderJsonWidgets() {
    if (jsonObj is int) {
      return PrimitiveJsonItem(
        jsonObj: jsonObj,
        textStyle: _jsonViewTheme.intStyle,
      );
    } else if (jsonObj is double) {
      return PrimitiveJsonItem(
        jsonObj: jsonObj,
        textStyle: _jsonViewTheme.doubleStyle,
      );
    } else if (jsonObj is String) {
      return PrimitiveJsonItem(
        jsonObj: '"$jsonObj"',
        textStyle: _jsonViewTheme.stringStyle,
      );
    } else if (jsonObj is bool) {
      return PrimitiveJsonItem(
        jsonObj: jsonObj,
        textStyle: _jsonViewTheme.boolStyle,
      );
    } else if (jsonObj == null) {
      return PrimitiveJsonItem(
        jsonObj: jsonObj,
        textStyle: _jsonViewTheme.boolStyle,
      );
    }

    return _jsonViewTheme.errorWidget;
  }
}
