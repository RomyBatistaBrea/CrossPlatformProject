import 'package:flutter/material.dart';

class Event extends StatefulWidget {
  final String eventType;
  final String event;
  final DateTime dateTime;

  const Event(
      {super.key,
      required this.eventType,
      required this.event,
      required this.dateTime});

  @override
  State<Event> createState() => _EventState();
}

class _EventState extends State<Event> {
  int hour = 0;
  int minute = 0;

  @override
  void initState() {
    super.initState();
    hour = widget.dateTime
        .hour; // Extract the hour value from the user-provided DateTime
    minute = widget.dateTime
        .minute; // Extract the minute value from the user-provided DateTime
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: 40,
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 22),
          child: Row(children: [
            Image.asset('assets/images/math-class.png'),
            const Spacer(),
            Text(
              widget.event,
              style: TextStyle(color: Theme.of(context).colorScheme.primary),
            ),
            const Spacer(),
            Text('$hour:$minute')
          ]),
        ),
      ),
      const Divider(
        color: Colors.white,
        height: 20,
        indent: 20,
        endIndent: 22,
        thickness: 0.1,
      ),
    ]);
  }
}
