import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_logcat/app/setting/log_icon_converter.dart';
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

    if (focusLog?.dataFormat == 'json' && focusLog?.detail != null) {
      try {
        json = jsonDecode(focusLog!.data);
      } catch (e) {}
    }

    if (focusLog == null) {
      return Container(
        color: const Color.fromRGBO(240, 240, 240, 1),
      );
    }

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
                  decoration: const BoxDecoration(
                    color: Colors.blueGrey,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    LogIconConverter.getIconData(focusLog.type),
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(TextSpan(
                      text: focusLog.title,
                      style: const TextStyle(
                          color: Colors.black,
                          backgroundColor: Colors.transparent),
                    )),
                    Text.rich(
                      TextSpan(
                        text: 'date : ',
                        style: Theme.of(context).textTheme.caption,
                        children: [
                          TextSpan(
                              text: focusLog.createdDt.toString(),
                              style: const TextStyle(
                                color: Colors.black,
                              ))
                        ],
                      ),
                    ),
                  ],
                )),
              ],
            ),
          ),
          const SizedBox(height: 30),
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
              alignment: Alignment.topLeft,
              child: json != null ? JsonView.map(json) : Text(focusLog.data),
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
