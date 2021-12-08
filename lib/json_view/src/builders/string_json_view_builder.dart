import 'package:flutter/material.dart';
import 'package:flutter_logcat/json_view/src/utils/converter.dart';

import '../src.dart';
import 'builders.dart';

class StringJsonViewBuilder implements JsonViewBuilder {
  StringJsonViewBuilder(this.jsonString, {JsonViewTheme? jsonViewTheme})
      : _commonBuilder = CommonJsonViewBuilder(
          JsonConverter.jsonStringToObject(jsonString),
          jsonViewTheme: jsonViewTheme ?? const JsonViewTheme(),
        );

  final String jsonString;
  final JsonViewBuilder _commonBuilder;

  @override
  Widget build() {
    return _commonBuilder.build();
  }

  @override
  JsonViewTheme? get jsonViewTheme => _commonBuilder.jsonViewTheme;
}
