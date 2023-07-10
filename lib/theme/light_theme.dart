import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: Colors.white, // Fonts color
    secondary: const Color.fromARGB(255, 53, 221, 182),
    onPrimary: const Color.fromARGB(30, 51, 65, 100),
    onSecondary: const Color.fromARGB(255, 103, 48, 92),
    tertiary: const Color.fromARGB(255, 22, 44, 85),
    onTertiary: Color.fromARGB(255, 58, 32, 105),
    primaryContainer: const Color.fromARGB(255, 33, 78, 107),
    onPrimaryContainer: Color.fromARGB(255, 153, 45, 175),
    outline: const Color.fromARGB(141, 255, 255, 255),
    brightness: Brightness.light, // Used for Buttons
  ),
  scaffoldBackgroundColor: Color.fromARGB(255, 21, 7, 37),
  // Sets the background color behind the waves
);
