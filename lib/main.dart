import 'package:flutter/material.dart';
import 'package:flutter_logcat/app/service/web_service.dart';

import 'app/app.dart';

void main() async {
  await WebService().init(15555);
  runApp(const App());
}
