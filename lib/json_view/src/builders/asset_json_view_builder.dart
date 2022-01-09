import 'package:flutter/material.dart';
import 'package:flutter_logcat/json_view/src/widgets/json_loader_item.dart';

import '../src.dart';
import 'builders.dart';

class AssetJsonViewBuilder implements JsonViewBuilder {
  AssetJsonViewBuilder(this.path, {JsonViewTheme? jsonViewTheme})
      : _jsonViewTheme = jsonViewTheme ?? const JsonViewTheme();

  final String path;
  final JsonViewTheme _jsonViewTheme;

  @override
  Widget build() {
    return JsonLoaderItem(
      path: path,
      jsonViewTheme: _jsonViewTheme,
    );
  }

  @override
  JsonViewTheme get jsonViewTheme => _jsonViewTheme;
}
