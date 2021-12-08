import 'package:flutter/material.dart';
import 'package:flutter_logcat/app/presentation/dashboard/log/log_view_controller.dart';
import 'package:provider/provider.dart';

import 'log_detail_panel.dart';
import 'log_list_panel.dart';

class LogScreen extends StatelessWidget {
  const LogScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logViewController = Provider.of<LogViewController>(context);
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(height: 20),
                Expanded(
                  child: LogListPanel(),
                ),
              ],
            ),
          ),
          if (logViewController.focusedLogModel != null)
            const Expanded(
              flex: 4,
              child: LogDetailPanel(),
            )
        ],
      ),
    );
  }
}
