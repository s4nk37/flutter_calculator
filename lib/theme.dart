import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.greenAccent,
  backgroundColor: const Color(0xffe5e5e5),
  buttonColor: Colors.black87,
  textTheme: const TextTheme(
    titleMedium: TextStyle(color: Colors.black87),
    displayMedium: TextStyle(color: Colors.black54),
    displayLarge: TextStyle(color: Colors.black87),
  ),
);
final darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: const Color(0xff2bbd7e),
  backgroundColor: const Color(0xff121212),
  buttonColor: Colors.white24,
  textTheme: const TextTheme(
    titleMedium: TextStyle(color: Colors.white70),
    displayMedium: TextStyle(color: Colors.white54),
    displayLarge: TextStyle(color: Colors.white70),
  ),
);
