import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData lightTheme = ThemeData(
    backgroundColor: const Color.fromRGBO(247, 247, 247, 1),
    primaryColor: const Color.fromRGBO(47, 47, 47, 1),
    cardColor: const Color.fromRGBO(255, 255, 255, 1),
    shadowColor: Colors.grey[200],
    textTheme: const TextTheme(
      bodyText1: TextStyle(
        fontFamily: 'NotoSans',
        color: Colors.black,
      ),
      bodyText2: TextStyle(
        fontFamily: 'NotoSans',
        fontSize: 13,
        color: Colors.black,
      ),
      headline1: TextStyle(
        fontFamily: 'NotoSans',
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 28,
      ),
      headline2: TextStyle(
        fontFamily: 'NotoSans',
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 23,
      ),
      headline3: TextStyle(
        fontFamily: 'NotoSans',
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
    ),
  );

  ThemeData darkTheme = ThemeData(
    backgroundColor: const Color.fromRGBO(47, 47, 47, 1),
    primaryColor: const Color.fromRGBO(247, 247, 247, 1),
    cardColor: const Color.fromRGBO(80, 80, 80, 1),
    shadowColor: Colors.grey[900],
    hoverColor: Colors.white.withOpacity(.5),
    textTheme: const TextTheme(
      bodyText1: TextStyle(
        fontFamily: 'NotoSans',
        color: Colors.white,
      ),
      bodyText2: TextStyle(
        fontFamily: 'NotoSans',
        fontSize: 13,
        color: Colors.white,
      ),
      headline1: TextStyle(
        fontFamily: 'NotoSans',
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 30,
      ),
      headline2: TextStyle(
        fontFamily: 'NotoSans',
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 23,
      ),
      headline3: TextStyle(
        fontFamily: 'NotoSans',
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
    ),
  );

  bool isDarkMode = false;

  get theme => isDarkMode ? darkTheme : lightTheme;

  toggleMode(bool a) {
    isDarkMode = a;
    notifyListeners();
  }
}
