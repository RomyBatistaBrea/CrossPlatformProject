import 'package:flutter/material.dart';
import 'package:login_page/pages/Profile/profile.dart';
import 'package:login_page/theme/light_theme.dart';
import 'package:login_page/theme/dark_theme.dart';
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
