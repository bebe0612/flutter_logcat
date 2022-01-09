import 'package:hive_flutter/hive_flutter.dart';

class LocalDatabaseClient {
  init() async {
    await Hive.initFlutter();
  }

  Future<int> getPortNumber() async {
    final box = await Hive.openBox('WebServer');

    int? portNumber = await box.get('portNumber');

    if (portNumber == null) {
      await box.put('portNumber', 15555);
      portNumber = 15555;
    }

    return portNumber;
  }

  setPortNumber(int portNumber) async {
    final box = await Hive.openBox('WebServer');

    await box.put('portNumber', portNumber);
  }
}
