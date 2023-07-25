import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      // Customize the font style for bodyText
      fontFamily: 'Inter',
      fontSize: 16.0,
      fontWeight: FontWeight.w100,
      color: Colors.white,
    ),
  ),
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: Colors.white, // Fonts color
    secondary: const Color.fromARGB(255, 53, 221, 182), // Used for calendar selected day border
    onPrimary: const Color.fromARGB(215, 48, 85, 179), // Used for single wave gradient
    onSecondary: const Color.fromARGB(255, 103, 48, 92), // Used for single wave gradient
    //tertiary: const Color.fromARGB(255, 22, 44, 85),
    //onTertiary: const Color.fromARGB(255, 58, 32, 105),
    //primaryContainer: const Color.fromARGB(255, 33, 78, 107),
    //onPrimaryContainer: const Color.fromARGB(255, 153, 45, 175),
    //outline: const Color.fromARGB(141, 255, 255, 255), // Used for calendar day previous selected
    outlineVariant: const Color.fromARGB(205, 52, 59, 117), // Used for calendar days bubble
    surface: const Color.fromARGB(255, 53, 221, 182), // Used for buttons
    inversePrimary: const Color.fromARGB(188, 202, 18, 58), // Used for the top left of the moon
    inverseSurface: const Color.fromARGB(255, 35, 24, 71), // Used for the bottom right of the moon
    brightness: Brightness.light, // Used for Buttons
  ),
  scaffoldBackgroundColor: const Color.fromARGB(205, 52, 59, 117), // Scaffold default color
);
