import 'package:evimero/main_nav_bar_page.dart';
import 'package:flutter/material.dart';
import 'theme/light_theme.dart';
import 'theme/dark_theme.dart';
import 'pages/Login/login.dart';

void main() {
  runApp(const Evimero());
}

class Evimero extends StatelessWidget {
  const Evimero({super.key});

  // This widget is the root of Evimero.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      home: Login(),
    );
  }
}
