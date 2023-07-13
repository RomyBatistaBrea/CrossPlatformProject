import 'package:flutter/material.dart';

class Weekday extends StatefulWidget {
  final String? day;

  const Weekday({Key? key, this.day}) : super(key: key);

  @override
  State<Weekday> createState() => _WeekdayState();
}

class _WeekdayState extends State<Weekday> {
  /*
  - Romy Batista July 12, 2023

  This widget represents a weekday label in the calendar.
  It displays the name of the weekday passed through the 'day' parameter.
  The text is styled with a white color, font size of 20, and bold font weight.

  This widget is used in the calendar to show the labels for each weekday.
  */
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.day ?? "",
      style: const TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
