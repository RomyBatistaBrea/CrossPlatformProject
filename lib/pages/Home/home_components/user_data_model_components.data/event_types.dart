import 'package:evimero/theme/constants/font_color.dart';
import 'package:evimero/theme/dark_theme.dart';
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
  /*
  - Romy Batista July 10, 2023

  This is the Event widget that represents an individual event.

  The widget displays the event type icon, event name, and the time of the event.

  The event type, event name, and event date/time are provided as parameters when creating an instance of this widget.

  The hour and minute values are extracted from the provided DateTime and stored in the state of the widget.
  */
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
        height: 45,
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
            Text('$hour:$minute'),
            const Spacer(),
            SizedBox(
              width: 75,
              height: 60,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.surface,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: const Text("Done",
                      style: TextStyle(
                        color: fontColor,
                        fontFamily: 'inter',
                        fontSize: 15,
                      ))),
            )
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
