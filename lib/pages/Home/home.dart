import 'package:flutter/material.dart';
import 'package:login_page/pages/Home/home_components/waves.dart';
import 'package:login_page/pages/Home/home_components/draggable_sheet.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:login_page/pages/Home/home_components/weekdays.dart';
import 'dart:ui';
import 'package:intl/intl.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  DateTime today = DateTime.now();
  late String formattedMonth;
  bool isScrolledToTop = false;

  _HomeState() {
    formattedMonth = DateFormat('MMMM').format(today);
  }

  @override
  void initState() {
    super.initState();
    formattedMonth =
        DateFormat('MMMM').format(today); // Format the current month
  }

  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
      formattedMonth = DateFormat('MMMM').format(day);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: content(),
    );
  }

  Widget content() {
    const String logoUrl = 'https://i.ibb.co/dMPYLQ2/dark-evimero.png';

    return Stack(children: [
      const Positioned.fill(child: WavesBackground()),
      BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),

          // Lines up in column
          child: Container(
              alignment: Alignment.center,
              child: const Column(mainAxisAlignment: MainAxisAlignment.start))),
      Column(children: [
        Row(children: [
          Container(
            padding: const EdgeInsets.fromLTRB(29, 43, 0, 0),
            width: 147,
            height: 73,
            alignment: Alignment.topLeft,
            child: Image.network(logoUrl),
          ),
        ]),
        Padding(
          padding: const EdgeInsets.only(top: 2, bottom: 10),
          child: Text(
            formattedMonth,
            style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 21,
                fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
            padding: const EdgeInsets.fromLTRB(41, 0, 40, 5),
            child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 400),
                child: weekDaysContent())),
        const Divider(
          color: Colors.white,
          height: 20,
          indent: 48,
          endIndent: 45,
          thickness: 1,
        ),
        Padding(
            padding: const EdgeInsets.fromLTRB(22, 0, 20, 0),
            child: calendarContent())
      ]),
      DraggableSheet()
    ]);
  }

  // Week day letters in the top row
  Widget weekDaysContent() {
    return const Row(
      children: [
        Weekday(day: 'S'),
        Spacer(),
        Weekday(day: 'M '),
        Spacer(),
        Weekday(day: 'T '),
        Spacer(),
        Weekday(day: 'W '),
        Spacer(),
        Weekday(day: 'T '),
        Spacer(),
        Weekday(day: 'F '),
        Spacer(),
        Weekday(day: 'S'),
      ],
    );
  }

  // All the content inside the TableCalendar

  Widget calendarContent() {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 400),
      child: TableCalendar(
        daysOfWeekVisible: false,
        calendarStyle: CalendarStyle(
            defaultTextStyle: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontFamily: 'inter',
                fontWeight:
                    FontWeight.w700 // Modify the default font color of days
                ),
            weekendTextStyle: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontFamily: 'inter',
                fontWeight: FontWeight.w700)),
        locale: 'en_US',
        sixWeekMonthsEnforced: true,
        rowHeight: 45,
        headerVisible: false,
        availableGestures: AvailableGestures.all,
        selectedDayPredicate: (day) => isSameDay(day, today),
        focusedDay: today,
        firstDay: DateTime.utc(2023, 7, 1),
        lastDay: DateTime.utc(2023, 10, 2),
        onDaySelected: _onDaySelected,
      ),
    );
  }
}
