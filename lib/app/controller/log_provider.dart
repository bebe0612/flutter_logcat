import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_logcat/app/model/log_model.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;

class LogProvider extends ChangeNotifier {
  late HttpServer _server;

  List<LogModel> logs = [];

  LogProvider() {
    var handler =
        const Pipeline().addMiddleware(logRequests()).addHandler(_echoRequest);

    shelf_io.serve(handler, '0.0.0.0', 15555).then(
      (value) {
        _server = value;
        _server.autoCompress = true;
        print('Serving at http://${_server.address.host}:${_server.port}');
      },
    );
  }

  Future<Response> _echoRequest(Request request) async {
    try {
      final String body = await request.readAsString();

      final Map<String, dynamic> json = jsonDecode(body);

      appendLog(LogModel.fromJson(json));
    } catch (e) {}

    return Response.ok('Request for "${request.url}"');
  }

  appendLog(LogModel log) {
    logs.add(log);
    notifyListeners();
  }
}
