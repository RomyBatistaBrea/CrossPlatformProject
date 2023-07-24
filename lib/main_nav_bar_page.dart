import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'pages/Home/home.dart';
import 'pages/Profile/profile.dart';
import 'pages/Community/community.dart';
import 'pages/Planner/planner.dart';
import 'pages/Reports/reports.dart';

class MainNavPage extends StatefulWidget {
  const MainNavPage({Key? key}) : super(key: key);

  @override
  _MainNavPageState createState() => _MainNavPageState();
}

class _MainNavPageState extends State<MainNavPage> {
  List pages = [
    const Profile(),
    const Planner(),
    const Home(),
    const Reports(),
    const Community(),
  ];

  int currentIndex = 2;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final String backgroundSite =
        MediaQuery.of(context).platformBrightness == Brightness.light
            ? 'assets/backgrounds/waves_light_mode.png'
            : 'assets/backgrounds/waves_dark_mode.png';

    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(children: [
          // Background image
          Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor)),
          Stack(
            children: [
              Container(
                  alignment: const Alignment(0.8, -0.89),
                  child: Container(
                    width: 33,
                    height: 33,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black,
                          spreadRadius: 0,
                          blurRadius: 1.0,
                          offset: Offset(1, 2),
                        ),
                      ],
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Theme.of(context).colorScheme.inversePrimary,
                          Theme.of(context).colorScheme.inverseSurface
                        ],
                      ),
                      shape: BoxShape.circle,
                    ),
                  )),
              Positioned.fill(
                top: null,
                right: 0,
                left: 0,
                bottom: -25,
                child: Image.asset(
                  backgroundSite,
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                children: [
                  // Your content here
                  Expanded(child: pages[currentIndex]),
                  // Navigation bar
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 6.0),
                    child: Container(
                      height: 80.0, // Adjust the height of the navigation bar
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        color: Color.fromARGB(38, 255, 255, 255),
                      ), // Set the background color here
                      child: Flex(
                        direction: Axis.horizontal,
                        children: [
                          Expanded(child: buildNavItem(Icons.person, 0)),
                          Expanded(
                              child: buildNavItem(
                                  CupertinoIcons.plus_rectangle_on_rectangle,
                                  1)),
                          Expanded(
                              child: buildNavItem(CupertinoIcons.clock, 2)),
                          Expanded(child: buildNavItem(Icons.bar_chart, 3)),
                          Expanded(
                              child: buildNavItem(
                                  Icons.mark_chat_read_outlined, 4)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ]));
  }

  Widget buildNavItem(IconData icon, int index) {
    bool isSelected = index == currentIndex;
    double iconSize = isSelected ? 33.0 : 22.0;

    return GestureDetector(
      onTap: () => onTap(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            padding: const EdgeInsets.all(2.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isSelected ? Colors.transparent : Colors.transparent,
            ),
            child: Icon(
              icon,
              color: Theme.of(context)
                  .colorScheme
                  .primary, // Set the color of the icon
              size: iconSize,
            ),
          ),
        ],
      ),
    );
  }
}
