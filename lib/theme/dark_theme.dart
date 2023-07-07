import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    primary: Colors.white, // Fonts color
    secondary: Color(0x47464700), // Used for Buttons
  ),
  scaffoldBackgroundColor: const Color.fromARGB(
      255, 28, 20, 48), // Sets the background color behind the waves
);
