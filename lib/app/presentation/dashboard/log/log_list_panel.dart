import 'package:flutter/material.dart';
import 'package:flutter_logcat/app/controller/log_provider.dart';
import 'package:provider/provider.dart';

import 'log_list_tile.dart';
import 'log_view_controller.dart';

class LogListPanel extends StatefulWidget {
  const LogListPanel({
    Key? key,
  }) : super(key: key);

  @override
  State<LogListPanel> createState() => _LogListPanelState();
}

class _LogListPanelState extends State<LogListPanel> {
  final _scrollController = ScrollController();
  int _lastLogLength = 0;
  @override
  Widget build(BuildContext context) {
    final logProvider = Provider.of<LogProvider>(context);
    final logViewController = Provider.of<LogViewController>(context);

    if (_lastLogLength != logProvider.logs.length) {
      _lastLogLength = logProvider.logs.length;

      WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
        if (logViewController.isAutoScrolling) {
          _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
        }
      });
    }
    return ListView.builder(
      controller: _scrollController,
      itemCount: logProvider.logs.length,
      itemBuilder: (context, index) {
        return LogListTile(
          idx: index,
          logModel: logProvider.logs[index],
          isFocused:
              logViewController.focusedLogModel == logProvider.logs[index],
          onTap: (log) {
            if (logViewController.focusedLogModel == log) {
              logViewController.unfocusedLog();
            } else {
              logViewController.focusLog(log);
            }
          },
        );
      },
    );
  }
}
