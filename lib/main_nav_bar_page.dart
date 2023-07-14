import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'pages/Home/home.dart';
import 'pages/Profile/profile.dart';
import 'pages/Community/community.dart';
import 'pages/Planner/planner.dart';
import 'pages/Reports/reports.dart';

class MainNavPage extends StatefulWidget {
  MainNavPage({Key? key}) : super(key: key);

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
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
        child: Container(
          height: 80.0, // Adjust the height of the navigation bar
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            gradient: LinearGradient(
              colors: [Theme.of(context).colorScheme.onPrimaryContainer, Theme.of(context).scaffoldBackgroundColor], // Set the gradient colors here
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ), // Set the background color here
          child: Flex(
            direction: Axis.horizontal,
            children: [
              Expanded(child: buildNavItem(Icons.person, 'Profile', 0)),
              Expanded(child: buildNavItem(CupertinoIcons.plus_rectangle_on_rectangle, 'Planner', 1)),
              Expanded(child: buildNavItem(CupertinoIcons.clock, 'Home', 2)),
              Expanded(child: buildNavItem(Icons.bar_chart, 'Reports', 3)),
              Expanded(child: buildNavItem(Icons.mark_chat_read_outlined, 'Comms', 4)),
            ],
          ),
        ),
      ),
      body: pages[currentIndex],
    );
  }

  Widget buildNavItem(IconData icon, String label, int index) {
    bool isSelected = index == currentIndex;
    double iconSize = isSelected ? 33.0 : 22.0;

    return GestureDetector(
      onTap: () => onTap(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isSelected ? Colors.transparent : Colors.transparent,
            ),
            child: Icon(
              icon,
              color: Theme.of(context).colorScheme.primary, // Set the color of the icon
              size: iconSize,
            ),
          ),
          AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 300),
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.transparent,
              fontSize: isSelected ? 15 : 0,
              fontWeight: isSelected ? FontWeight.normal : FontWeight.w100,
            ),
            child: Text(label),
          ),
        ],
      ),
    );
  }
}
