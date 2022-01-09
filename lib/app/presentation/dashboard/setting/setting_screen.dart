import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_logcat/app/controller/environment_provider.dart';
import 'package:flutter_logcat/app/controller/log_provider.dart';
import 'package:flutter_logcat/app/controller/theme_provider.dart';
import 'package:flutter_logcat/app/setting/color.dart';
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
      ),
      padding: const EdgeInsetsDirectional.all(20),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Setting",
                style: Theme.of(context).textTheme.headline2,
              ),
            ],
          ),
          Container(
            constraints: const BoxConstraints(
              maxWidth: 500,
            ),
            child: Column(
              children: const [
                SizedBox(height: 15),
                DarkModeTile(),
                ServerPortTile(),
              ],
            ),
          ),
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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.dark_mode,
            size: 20,
            color: Theme.of(context).highlightColor,
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Dark Mode",
                style: Theme.of(context).textTheme.bodyText1,
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

class ServerPortTile extends StatefulWidget {
  const ServerPortTile({
    Key? key,
  }) : super(key: key);

  @override
  State<ServerPortTile> createState() => _ServerPortTileState();
}

class _ServerPortTileState extends State<ServerPortTile> {
  final _tc = TextEditingController();

  @override
  void initState() {
    _tc.text =
        Provider.of<EnvironmentProvider>(context, listen: false).portNumber;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final envProvider = Provider.of<EnvironmentProvider>(context);

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.eighteen_mp_sharp,
            size: 20,
            color: Theme.of(context).highlightColor,
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Server Port",
                style: Theme.of(context).textTheme.bodyText1,
              )
            ],
          ),
          const Spacer(),
          SizedBox(
            width: 65,
            height: 30,
            child: TextFormField(
              controller: _tc,
              style: Theme.of(context).textTheme.bodyText1,
              cursorColor: Colors.black,
              cursorHeight: 15,
              maxLength: 5,
              onEditingComplete: () {
                envProvider.setPort(_tc.text);
                FocusScope.of(context).unfocus();
              },
              buildCounter: (context,
                      {required currentLength,
                      required isFocused,
                      maxLength}) =>
                  null,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'port',
                hintStyle: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(color: Colors.grey[400]),
                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                enabledBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                focusedBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
