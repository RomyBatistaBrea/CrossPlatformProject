import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: Colors.white, // Fonts color
    secondary: const Color.fromRGBO(135, 210, 193, 1),
    onPrimary: const Color.fromARGB(255, 58, 193, 211),
    onSecondary: const Color.fromARGB(255, 206, 40, 76),
    tertiary: const Color.fromARGB(255, 192, 88, 18),
    onTertiary: const Color.fromARGB(255, 91, 22, 219),
    primaryContainer: const Color.fromARGB(255, 60, 138, 190),
    onPrimaryContainer: const Color.fromARGB(255, 205, 41, 238),

    brightness: Brightness.light, // Used for Buttons
  ),
  scaffoldBackgroundColor: const Color.fromARGB(
      144, 51, 55, 112), // Sets the background color behind the waves
);
