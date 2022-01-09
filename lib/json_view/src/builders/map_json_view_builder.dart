import 'package:flutter/material.dart';

import '../src.dart';
import 'builders.dart';

class MapJsonViewBuilder implements JsonViewBuilder {
  MapJsonViewBuilder(this.map, {JsonViewTheme? jsonViewTheme})
      : _commonBuilder = CommonJsonViewBuilder(
          map,
          jsonViewTheme: jsonViewTheme ?? const JsonViewTheme(),
        );

  final Map<String, dynamic> map;
  final JsonViewBuilder _commonBuilder;

  @override
  Widget build() {
    return _commonBuilder.build();
  }

  @override
  JsonViewTheme? get jsonViewTheme => _commonBuilder.jsonViewTheme;
}
