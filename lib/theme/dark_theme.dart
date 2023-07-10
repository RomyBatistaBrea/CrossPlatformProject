import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: Colors.white, // Fonts color
    secondary: const Color.fromARGB(255, 53, 221, 182),
    onPrimary: const Color.fromARGB(255, 107, 79, 84),
    onSecondary: const Color.fromARGB(255, 121, 79, 81),
    tertiary: const Color.fromARGB(255, 97, 81, 84),
    onTertiary: const Color.fromARGB(255, 97, 78, 92),
    primaryContainer: const Color.fromARGB(255, 94, 66, 71),
    onPrimaryContainer: const Color.fromARGB(255, 139, 121, 124),
    outline: const Color.fromARGB(255, 37, 38, 51),
    outlineVariant: const Color.fromARGB(255, 20, 18, 19),
    brightness: Brightness.light, // Used for Buttons
  ),
  scaffoldBackgroundColor: const Color.fromARGB(255, 32, 33, 44), // Sets the background color behind the waves
);
