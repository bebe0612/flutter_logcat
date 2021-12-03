import 'package:flutter/material.dart';
import 'package:flutter_logcat/app/controller/log_provider.dart';
import 'package:flutter_logcat/app/presentation/dashboard/log/log_view_controller.dart';
import 'package:provider/provider.dart';

import 'log_list_tile.dart';

class LogScreen extends StatelessWidget {
  const LogScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).shadowColor,
              blurRadius: 5.0,
              offset: const Offset(-1, 0),
              spreadRadius: 5.0,
            )
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Row(
            children: [
              const SizedBox(width: 20),
              Text(
                "로그",
                style: Theme.of(context).textTheme.headline1,
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Expanded(
            child: LogListCard(),
          ),
        ],
      ),
    );
  }
}

class LogListCard extends StatefulWidget {
  const LogListCard({
    Key? key,
  }) : super(key: key);

  @override
  State<LogListCard> createState() => _LogListCardState();
}

class _LogListCardState extends State<LogListCard> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final logProvider = Provider.of<LogProvider>(context);
    final logViewController = Provider.of<LogViewController>(context);
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      if (logViewController.isAutoScrolling) {
        _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
      }
    });
    return Scrollbar(
      child: ListView.separated(
        controller: _scrollController,
        itemCount: logProvider.logs.length,
        padding: const EdgeInsets.all(20),
        separatorBuilder: (context, index) {
          return const SizedBox(height: 10);
        },
        itemBuilder: (context, index) {
          return LogListTile(logModel: logProvider.logs[index]);
        },
      ),
    );
  }
}
