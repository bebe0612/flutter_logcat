import 'package:flutter/material.dart';
import 'package:flutter_logcat/app/controller/environment_provider.dart';
import 'package:flutter_logcat/app/controller/log_provider.dart';
import 'package:flutter_logcat/app/controller/theme_provider.dart';
import 'package:flutter_logcat/app/presentation/dashboard/log/log_view_controller.dart';
import 'package:provider/provider.dart';

import 'presentation/splash/splash_view.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<EnvironmentProvider>(
            create: (context) => EnvironmentProvider()),
        ChangeNotifierProvider<ThemeProvider>(
            create: (context) => ThemeProvider()),
        ChangeNotifierProvider<LogProvider>(
            create: (context) => LogProvider(), lazy: false),
        ChangeNotifierProvider<LogViewController>(
            create: (context) => LogViewController()),
      ],
      builder: (context, child) {
        var themeProvider = Provider.of<ThemeProvider>(context);

        return MaterialApp(
          home: const SplashView(),
          theme: themeProvider.theme,
          themeMode: ThemeMode.dark,
        );
      },
    );
  }
}
