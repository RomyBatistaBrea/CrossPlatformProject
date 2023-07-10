import 'package:flutter/material.dart';

class Weekday extends StatefulWidget {
  final String? day;

  const Weekday({Key? key, this.day}) : super(key: key);

  @override
  State<Weekday> createState() => _WeekdayState();
}

class _WeekdayState extends State<Weekday> {
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
