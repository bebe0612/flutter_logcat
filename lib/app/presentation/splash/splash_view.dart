import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_logcat/app/presentation/dashboard/dashboard_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  bool _isShow = false;
  @override
  void initState() {
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      setState(() {
        _isShow = true;
      });
    });

    Timer(const Duration(milliseconds: 1500), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const DashBoardView()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blue,
      child: Center(
        child: AnimatedOpacity(
          opacity: _isShow ? 1 : 0,
          duration: const Duration(milliseconds: 1500),
          child: Image.asset(
            'assets/images/logcat.jpg',
            width: 300,
            height: 300,
          ),
        ),
      ),
    );
  }
}
