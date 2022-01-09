import 'package:flutter/material.dart';
import 'package:flutter_logcat/app/service/web_service.dart';
import 'package:r_get_ip/r_get_ip.dart';

class EnvironmentProvider extends ChangeNotifier {
  final WebService _webService;
  String ip = '';

  EnvironmentProvider(this._webService) {
    init();
  }

  init() async {
    ip = (await RGetIp.internalIP).toString();

    notifyListeners();
  }

  String get portNumber => (_webService.getPortNumber()).toString();

  setPort(String portNumber) async {
    await _webService.setPortNumber(int.parse(portNumber));
  }
}
