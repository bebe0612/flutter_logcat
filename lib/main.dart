import 'package:flutter/material.dart';
import 'package:flutter_logcat/app/service/local_database_client.dart';
import 'package:flutter_logcat/app/service/web_service.dart';

import 'app/app.dart';

void main() async {
  await LocalDatabaseClient().init();

  await WebService().init();
  runApp(const App());
}
