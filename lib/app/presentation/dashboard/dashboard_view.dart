import 'package:flutter/material.dart';
import 'package:flutter_logcat/app/controller/environment_provider.dart';
import 'package:flutter_logcat/app/presentation/dashboard/setting/setting_screen.dart';
import 'package:provider/provider.dart';

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
      color: const Color.fromRGBO(246, 248, 250, 1),
      child: Column(
        children: [
          TopBar(),
          Expanded(
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
          ),
        ],
      ),
    );
  }
}

class TopBar extends StatelessWidget {
  const TopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<EnvironmentProvider>(context);

    return Container(
      child: Text(provider.ip + ':' + provider.portNumber),
    );
  }
}
