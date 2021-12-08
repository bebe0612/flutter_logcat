import 'package:flutter/material.dart';

class LogIconConverter {
  static final Map<String, IconData> _iconMap = {
    "navigation": Icons.router,
    "network": Icons.rss_feed,
  };

  static getIconData(String type) {
    if (_iconMap.containsKey(type)) {
      return _iconMap[type];
    } else {
      return Icons.circle;
    }
  }

  static setIconData(String type, IconData iconData) {
    _iconMap[type] = iconData;
  }
}
