import 'package:flutter/material.dart';
import 'package:flutter_logcat/app/presentation/dashboard/setting/setting_screen.dart';

import 'log/log_screen.dart';
import 'sidebar/sidebar.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({Key? key}) : super(key: key);

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).backgroundColor,
      child: Row(
        children: [
          SideBar(
            onTabChanged: (index) {
              setState(() {
                _index = index;
              });
            },
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(10),
              child: IndexedStack(
                index: _index,
                children: const [
                  LogScreen(),
                  SettingScreen(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
