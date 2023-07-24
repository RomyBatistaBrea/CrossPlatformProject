import 'package:evimero/main_nav_bar_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'theme/light_theme.dart';
import 'theme/dark_theme.dart';
import 'pages/Login/login.dart';

void main() { 
  // Makes android notification bar and bottom bar background color transparent
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent));
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
      home: const Login(),
    );
  }
}
