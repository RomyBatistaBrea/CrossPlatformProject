import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: Colors.white, // Fonts color
    secondary: const Color.fromARGB(255, 53, 221, 182),
    onPrimary: const Color.fromARGB(255, 68, 227, 248),
    onSecondary: const Color.fromARGB(255, 250, 48, 92),
    tertiary: const Color.fromARGB(255, 245, 112, 23),
    onTertiary: const Color.fromARGB(255, 103, 26, 247),
    primaryContainer: const Color.fromARGB(255, 77, 178, 245),
    onPrimaryContainer: const Color.fromARGB(255, 214, 42, 248),

    brightness: Brightness.light, // Used for Buttons
  ),
  scaffoldBackgroundColor: Colors.white,
  // Color.fromARGB(
  //     144, 51, 55, 112), // Sets the background color behind the waves
);
