import 'package:flutter/cupertino.dart';
import 'package:flutter_logcat/app/model/log_model.dart';

class LogViewController extends ChangeNotifier {
  bool isAutoScrolling = true;

  turnOnAutoScroll() {
    isAutoScrolling = true;
    notifyListeners();
  }

  turnOffAutoScroll() {
    isAutoScrolling = false;
    notifyListeners();
  }

  LogModel? focusedLogModel;

  focusLog(LogModel logModel) {
    focusedLogModel = logModel;
    notifyListeners();
  }

  unfocusedLog() {
    focusedLogModel = null;
    notifyListeners();
  }
}
