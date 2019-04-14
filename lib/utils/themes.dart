import 'package:flutter/material.dart';

class Themes {
  static ThemeData kIOSTheme = new ThemeData(
    primarySwatch: Colors.deepPurple,
    primaryColor: Colors.grey[100],
    primaryColorBrightness: Brightness.light,
  );

  static ThemeData kDefaultTheme = new ThemeData(
    primarySwatch: Colors.deepPurple,
    accentColor: Colors.blue[400],
  );
}
