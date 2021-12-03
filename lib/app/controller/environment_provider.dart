import 'package:flutter/material.dart';
import 'package:r_get_ip/r_get_ip.dart';

class EnvironmentProvider extends ChangeNotifier {
  String ip = '';

  EnvironmentProvider() {
    init();
  }

  init() async {
    ip = (await RGetIp.internalIP).toString();

    notifyListeners();
  }
}
