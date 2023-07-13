
import 'package:flutter/material.dart';
import 'package:evimero/pages/Profile/profile.dart';
import 'package:evimero/theme/light_theme.dart';
import 'package:evimero/theme/dark_theme.dart';
import 'pages/Login/login.dart';
import 'pages/Home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      home: const Login(),
    );
  }
}
