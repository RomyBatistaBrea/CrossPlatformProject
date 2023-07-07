import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: Colors.white, // Fonts color
    secondary: const Color(0x47464700), // Used for Buttons
    brightness: Brightness.dark,
  ),
  scaffoldBackgroundColor: const Color.fromARGB(
      255, 28, 20, 48), // Sets the background color behind the waves
);
