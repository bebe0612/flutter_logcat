import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter_logcat/app/service/local_database_client.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;

typedef Json = Map<String, dynamic>;

class WebService {
  static final WebService _instance = WebService._internal();
  factory WebService() => _instance;
  WebService._internal();

  final LocalDatabaseClient _localDatabaseClient = LocalDatabaseClient();

  late HttpServer _server;

  final _jsonDataStreamController = StreamController<Json>.broadcast();
  Stream<Json> get jsonDataStream => _jsonDataStreamController.stream;

  init() async {
    _start(await _localDatabaseClient.getPortNumber());
  }

  Future<Response> _echoRequest(Request request) async {
    try {
      final String body = await request.readAsString();
      final Map<String, dynamic> json = jsonDecode(body);
      _jsonDataStreamController.add(json);
    } catch (e) {
      return Response.internalServerError(body: e.toString());
    }
    return Response.ok('Request for "${request.url}"');
  }

  int getPortNumber() => _server.port;

  Future<void> setPortNumber(int portNumber) async {
    _server.close();
    await _localDatabaseClient.setPortNumber(portNumber);
    _start(portNumber);
  }

  _start(int port) async {
    var handler =
        const Pipeline().addMiddleware(logRequests()).addHandler(_echoRequest);

    _server = await shelf_io.serve(handler, '0.0.0.0', port);

    _server.autoCompress = true;

    print('Serving at http://${_server.address.host}:${_server.port}');
  }
}
