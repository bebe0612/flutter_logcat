import 'package:flutter/material.dart';

import '../src.dart';
import 'builders.dart';
import 'primitive_builders/list_builder.dart';
import 'primitive_builders/map_builder.dart';
import 'primitive_builders/primitive_builder.dart';

class CommonJsonViewBuilder implements JsonViewBuilder {
  CommonJsonViewBuilder(this.jsonObj, {required JsonViewTheme jsonViewTheme})
      : _jsonViewTheme = jsonViewTheme;

  final dynamic jsonObj;
  final JsonViewTheme _jsonViewTheme;

  @override
  Widget build() {
    return _renderJsonWidgets();
  }

  @override
  JsonViewTheme? get jsonViewTheme => _jsonViewTheme;

  Widget _renderJsonWidgets() {
    if (jsonObj is Map<String, dynamic>) {
      return JsonMapBuilder(
        jsonObj: jsonObj as Map<String, dynamic>,
        jsonViewTheme: _jsonViewTheme,
      );
    } else if (jsonObj is List) {
      return JsonListBuilder(
        jsonObj: jsonObj as List,
        jsonViewTheme: _jsonViewTheme,
      );
    }
    return PrimitiveBuilder(
      jsonObj,
      jsonViewTheme: _jsonViewTheme,
    );
  }
}
