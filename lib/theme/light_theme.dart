import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: Colors.white, // Fonts color
    secondary: const Color.fromRGBO(135, 210, 193, 1),
    brightness: Brightness.light, // Used for Buttons
  ),
  scaffoldBackgroundColor: const Color.fromARGB(
      144, 51, 55, 112), // Sets the background color behind the waves
);
