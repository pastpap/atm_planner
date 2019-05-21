import 'package:flutter/material.dart';

class Themes {
  static ThemeData kIOSTheme = new ThemeData(
    primarySwatch: Colors.deepPurple,
    primaryColor: Colors.deepPurple[300],
    primaryColorBrightness: Brightness.dark,
  );

  static ThemeData kDefaultTheme = new ThemeData(
    primarySwatch: Colors.deepPurple,
    accentColor: Colors.blue[400],
  );
}
