import 'package:flutter/cupertino.dart';

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
}
