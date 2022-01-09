import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;

typedef Json = Map<String, dynamic>;

class WebService {
  late HttpServer _server;

  final _jsonDataStreamController = StreamController<Json>.broadcast();
  Stream<Json> get jsonDataStream => _jsonDataStreamController.stream;

  init() async {
    var handler =
        const Pipeline().addMiddleware(logRequests()).addHandler(_echoRequest);

    _server = await shelf_io.serve(handler, '0.0.0.0', 15555);

    _server.autoCompress = true;

    print('Serving at http://${_server.address.host}:${_server.port}');
  }

  Future<Response> _echoRequest(Request request) async {
    try {
      final String body = await request.readAsString();
      final Map<String, dynamic> json = jsonDecode(body);
    } catch (e) {
      return Response.internalServerError(body: e.toString());
    }
    return Response.ok('Request for "${request.url}"');
  }

  Future<void> updatePort(int portNumber) async {
    //
  }
}
