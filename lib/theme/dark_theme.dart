import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  /*
  The darkTheme is a ThemeData object that defines the color scheme for the dark mode of the application.

  ColorScheme:
    - primary: The font color for dark mode.
    - secondary: A secondary color used for specific elements.
    - onPrimary: The color for elements that are displayed on top of the primary color.
    - onSecondary: The color for elements that are displayed on top of the secondary color.
    - tertiary: A tertiary color used for specific elements.
    - onTertiary: The color for elements that are displayed on top of the tertiary color.
    - primaryContainer: The background color for specific containers in dark mode.
    - onPrimaryContainer: The color for elements that are displayed on top of the primaryContainer color.
    - outline: The color used for outlines and borders.
    - outlineVariant: A variant of the outline color.
    - surface: The color used for dark mode buttons.
    - surfaceVariant: A variant of the surface color.
    - brightness: The brightness of the color scheme (light or dark).

  Other properties:
    - scaffoldBackgroundColor: The background color behind the waves.

  Note: The darkTheme is a customization of the default ThemeData and can be used to override the default color scheme for dark mode.
*/
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
    secondary: Colors.white, // Used for calendar selected day border
    onPrimary: const Color.fromARGB(255, 82, 53, 48), // Used for single wave gradient
    onSecondary: const Color.fromARGB(255, 82, 53, 55), // Used for single wave gradient
    //tertiary: const Color.fromARGB(255, 97, 81, 84),
    //onTertiary: const Color.fromARGB(255, 97, 78, 92),
    //primaryContainer: const Color.fromARGB(255, 94, 66, 71),
    //onPrimaryContainer: const Color.fromARGB(255, 139, 121, 124),
    //outline: const Color.fromARGB(255, 37, 38, 51),
    outlineVariant: const Color.fromARGB(255, 104, 50, 50), // Used for calendar days bubble
    surface: const Color.fromARGB(255, 71, 71, 71), // Used for dark mode buttons
    //surfaceVariant: const Color.fromARGB(255, 53, 221, 182), 
    inversePrimary: const Color.fromARGB(255, 115, 116, 126), // Used for the top left of the moon
    inverseSurface: const Color.fromARGB(255, 155, 86, 74), // Used for the bottom right of the moon
    brightness: Brightness.dark,
  ),
  scaffoldBackgroundColor: const Color.fromARGB(255, 28, 28, 39), // Scaffold default color
);
