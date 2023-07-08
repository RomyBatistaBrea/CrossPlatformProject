import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content(),
    );
  }

  Widget content() {
    return Stack(
      children: [
        DecoratedBox(
          decoration:
              BoxDecoration(color: Theme.of(context).scaffoldBackgroundColor),
          child: Stack(children: [
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(30, 30, 0, 0),
                      width: 145,
                      height: 65,
                      alignment: Alignment.topLeft,
                      child: Image.network(
                          'https://i.ibb.co/dMPYLQ2/dark-evimero.png'),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    today.toString().split(" ")[0],
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 18),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 15, 0),
                  child: TableCalendar(
                    calendarStyle: CalendarStyle(
                      defaultTextStyle: TextStyle(
                          color: Theme.of(context)
                              .colorScheme
                              .primary // Modify the default font color of days
                          ),
                    ),
                    locale: 'en_US',
                    rowHeight: 45,
                    headerVisible: false,
                    headerStyle: const HeaderStyle(
                        formatButtonVisible: false, titleCentered: true),
                    availableGestures: AvailableGestures.all,
                    selectedDayPredicate: (day) => isSameDay(day, today),
                    focusedDay: today,
                    firstDay: DateTime.utc(2023, 7, 1),
                    lastDay: DateTime.utc(2023, 10, 2),
                    onDaySelected: _onDaySelected,
                  ),
                ),
              ],
            ),
            Expanded(
              child: DraggableScrollableSheet(
                initialChildSize: 0.5,
                minChildSize: 0.5,
                maxChildSize: 1.0,
                builder:
                    (BuildContext context, ScrollController scrollController) {
                  return Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      color: Color.fromARGB(255, 102, 8, 156),
                    ),
                    child: ListView.builder(
                      shrinkWrap: true,
                      controller: scrollController,
                      itemCount: 25,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          title: Text(
                            'Hi $index',
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.primary),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            )
          ]),
        ),
      ],
    );
  }
}
