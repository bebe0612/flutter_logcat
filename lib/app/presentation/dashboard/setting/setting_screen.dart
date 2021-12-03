import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_logcat/app/controller/theme_provider.dart';
import 'package:provider/provider.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({
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
      padding: const EdgeInsetsDirectional.all(20),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "설정",
                style: Theme.of(context).textTheme.headline1,
              ),
            ],
          ),
          const SizedBox(height: 15),
          const DarkModeTile(),
        ],
      ),
    );
  }
}

class DarkModeTile extends StatelessWidget {
  const DarkModeTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey[400]!)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.dark_mode,
            size: 35,
            color: Theme.of(context).highlightColor,
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "다크모드 활성화",
                style: Theme.of(context).textTheme.headline3!,
              )
            ],
          ),
          const Spacer(),
          Switch(
            value: themeProvider.isDarkMode,
            activeColor: Theme.of(context).backgroundColor,
            onChanged: (value) {
              themeProvider.toggleMode(value);
            },
          ),
        ],
      ),
    );
  }
}
