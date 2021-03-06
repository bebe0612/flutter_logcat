import 'package:flutter/material.dart';
import 'package:flutter_logcat/app/setting/color.dart';

import 'side_tab.dart';

class SideBar extends StatefulWidget {
  const SideBar({
    Key? key,
    required this.onTabChanged,
  }) : super(key: key);

  final Function(int index) onTabChanged;

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      decoration: BoxDecoration(
        color: AppColor.dashboardBackground(context),
        gradient: const LinearGradient(
          colors: [
            Color.fromRGBO(70, 78, 106, 1),
            Color.fromRGBO(70, 78, 106, 1),
          ],
          end: Alignment.center,
        ),
      ),
      child: Column(
        children: [
          // Container(
          //   height: 100,
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       Image.asset('assets/images/logcat.jpg', width: 30),
          //       const SizedBox(width: 10),
          //       Text("logcat", style: Theme.of(context).textTheme.headline2),
          //     ],
          //   ),
          // ),
          SideTab(
            title: 'Home',
            isSelected: _index == 0,
            iconData: Icons.home,
            onTap: () {
              setState(() {
                _index = 0;
              });
              widget.onTabChanged(0);
            },
          ),
          SideTab(
            title: 'Setting',
            isSelected: _index == 1,
            iconData: Icons.settings,
            onTap: () {
              setState(() {
                _index = 1;
              });
              widget.onTabChanged(1);
            },
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                border: Border(
                  right: BorderSide(
                    color: Color.fromRGBO(223, 223, 223, 1),
                  ),
                ),
              ),
            ),
          ),
          // Text(
          //   "Your Ip : ${provider.ip}",
          //   style: Theme.of(context).textTheme.bodyText1,
          // ),
        ],
      ),
    );
  }
}
