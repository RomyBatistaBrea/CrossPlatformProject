import 'package:flutter/material.dart';
import 'theme/light_theme.dart';
import 'theme/dark_theme.dart';
import 'pages/Profile/profile.dart';
import 'pages/Login/login.dart';
import 'pages/Home/home.dart';

void main() {
  runApp(const Evimero());
}

class Evimero extends StatelessWidget {
  const Evimero({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      home: const Home(),
    );
  }
}
