import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_logcat/json_view/src/flutter_json_view.dart';
import 'package:provider/provider.dart';

import 'log_view_controller.dart';

class LogDetailPanel extends StatelessWidget {
  const LogDetailPanel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logViewController = Provider.of<LogViewController>(context);
    final focusLog = logViewController.focusedLogModel;
    //
    Map<String, dynamic>? json;

    if (focusLog?.detail != null) {
      try {
        json = jsonDecode(focusLog!.detail);
      } catch (e) {
        print("parsing fail");
      }
    }

    if (focusLog == null)
      return Container(
        color: Color.fromRGBO(240, 240, 240, 1),
      );

    return Container(
      decoration: const BoxDecoration(
          color: Color.fromRGBO(240, 240, 240, 1),
          border: Border(
              left: BorderSide(
            color: Color.fromRGBO(223, 223, 223, 1),
          ))),
      child: Column(
        children: [
          Container(
            color: const Color.fromRGBO(232, 232, 232, 1),
            height: 30,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  color: Colors.blueGrey,
                ),
                SizedBox(width: 10),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Network"),
                    Text(DateTime.now().toString()),
                  ],
                )),
              ],
            ),
          ),
          const SizedBox(height: 50),
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(247, 247, 247, 1),
                border: Border.all(
                  color: const Color.fromRGBO(223, 223, 223, 1),
                ),
              ),
              child: json != null ? JsonView.map(json) : null,
            ),
          ),
        ],
      ),
    );
  }
}
