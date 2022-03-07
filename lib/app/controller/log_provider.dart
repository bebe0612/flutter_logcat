import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_logcat/app/model/log_model.dart';
import 'package:flutter_logcat/app/service/web_service.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;

class LogProvider extends ChangeNotifier {
  Map<String, bool> topics = {};

  List<LogModel> _logs = [];

  List<LogModel> logs = [];

  toggleFilter(String text) {
    if (topics.containsKey(text)) {
      topics[text] = !(topics[text]!);

      logs = _logs.where((log) {
        if (topics[log.title] == true) {
          return true;
        }
        return false;
      }).toList();
      notifyListeners();
    }
  }

  _addLog(LogModel log) {
    _logs.add(log);

    if (topics[log.title] == true) {
      logs.add(log);
    }
  }

  LogProvider() {
    WebService().jsonDataStream.listen((json) {
      final log = LogModel.fromJson(json).copyWith(createdDt: DateTime.now());

      if (!topics.containsKey(log.title)) {
        topics[log.title] = true;
      }
      _addLog(log);

      notifyListeners();
    });
  }
}
