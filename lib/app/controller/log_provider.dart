import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_logcat/app/model/log_model.dart';
import 'package:flutter_logcat/app/service/web_service.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;

class LogProvider extends ChangeNotifier {
  List<LogModel> logs = [
    LogModel(
      createdDt: DateTime.now(),
      type: 'network',
      title: 'title',
      detail: '',
    ),
  ];
  List<String> typeFilters = [
    'page_event',
    'page_state',
  ];

  LogProvider() {
    WebService().jsonDataStream.listen((json) {
      final log = LogModel.fromJson(json).copyWith(createdDt: DateTime.now());
      logs.add(log);
      notifyListeners();
    });
  }
}
