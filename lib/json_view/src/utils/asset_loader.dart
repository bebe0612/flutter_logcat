import 'package:flutter/services.dart';

import 'converter.dart';

abstract class AssetLoader {
  static Future<String> _loadAssets(String path) async {
    return rootBundle.loadString(path);
  }

  static Future<dynamic> getAssetJson(String filePath) async {
    final jsonString = await _loadAssets(filePath);
    return JsonConverter.jsonStringToObject(jsonString);
  }
}
