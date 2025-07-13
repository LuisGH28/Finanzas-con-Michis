import 'package:flutter/material.dart';

class AppTheme {
  static final light = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.purple,
    fontFamily: 'Roboto',
    scaffoldBackgroundColor: const Color(0xFFF5F5F5),
  );

  static final dark = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.deepPurple,
    fontFamily: 'Roboto',
  );
}
