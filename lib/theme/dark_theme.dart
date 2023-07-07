import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: Colors.white, // Fonts color
    secondary: const Color.fromARGB(70, 105, 54, 34), // Used for Buttons
    onPrimary: const Color.fromARGB(150, 161, 31, 59), // 1/2 Wave color
    onSecondary: const Color.fromARGB(166, 49, 160, 175), // 1/2 Wave color
    tertiary: const Color.fromARGB(173, 77, 19, 185), // 1/2 Wave color
    onTertiary: const Color.fromARGB(172, 153, 70, 14), // 1/2 Wave color
    primaryContainer: const Color.fromARGB(153, 160, 31, 185), // 1/2 Wave color
    onPrimaryContainer: const Color.fromARGB(172, 46, 106, 146), // 1/2 Wave color
    
    brightness: Brightness.dark,
  ),
  scaffoldBackgroundColor: const Color.fromARGB(
      255, 28, 20, 48), // Sets the background color behind the waves
);

