import 'package:flutter/material.dart';

enum AppTheme{
  blueLight("Blue light"),
  blueDark("Blue dark"),
  redDark("Red dark");

  final String name;
  const AppTheme(this.name);
}

final appThemeData = {
  AppTheme.blueLight: ThemeData(
    appBarTheme: const AppBarTheme(backgroundColor: Colors.blue),
    brightness: Brightness.light,
    primaryColor: Colors.blue,
  ),
  AppTheme.blueDark: ThemeData(
    appBarTheme: AppBarTheme(backgroundColor: Colors.blue[700]),
    brightness: Brightness.dark,
    primaryColor: Colors.blue[700],
  ),
  AppTheme.redDark: ThemeData(
    appBarTheme: AppBarTheme(backgroundColor: Colors.red[700]),
    brightness: Brightness.dark,
    primaryColor: Colors.red[700],
  ),
};

