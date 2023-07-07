import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.dark(
    primary: Colors.white, // Fonts color
    secondary: Color.fromRGBO(135, 210, 193, 1), // Used for Buttons
  ),
  scaffoldBackgroundColor:
      const Color(0x343B7500), // Sets the background color behind the waves
);
