import 'package:flutter/material.dart';
import 'package:flutter_logcat/app/presentation/dashboard/log/log_filter_panel.dart';
import 'package:flutter_logcat/app/presentation/dashboard/log/log_view_controller.dart';
import 'package:flutter_logcat/app/service/web_service.dart';
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
      child: ReactiveColumnRow(
        boundWidth: 800,
        children: [
          Expanded(
            flex: 6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                LogFilterPanel(),
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

class ReactiveColumnRow extends StatelessWidget {
  const ReactiveColumnRow({
    Key? key,
    required this.children,
    required this.boundWidth,
  }) : super(key: key);
  final List<Widget> children;
  final double boundWidth;
  @override
  Widget build(BuildContext context) {
    return boundWidth < MediaQuery.of(context).size.width
        ? Row(
            children: children,
          )
        : Column(
            children: children,
          );
  }
}
