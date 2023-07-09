import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:login_page/components/weekdays.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';
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
    return Stack(children: [
      Positioned.fill(
        child: Container(
          decoration:
              BoxDecoration(color: Theme.of(context).scaffoldBackgroundColor),
          child: WaveWidget(
            config: CustomConfig(
              gradients: [
                [
                  Theme.of(context).colorScheme.onPrimary,
                  Theme.of(context).colorScheme.onSecondary
                ],
                [
                  Theme.of(context).colorScheme.tertiary,
                  Theme.of(context).colorScheme.onTertiary,
                ],
                [
                  Theme.of(context).colorScheme.primaryContainer,
                  Theme.of(context).colorScheme.onPrimaryContainer,
                ],
                [
                  Theme.of(context).colorScheme.onTertiary,
                  Theme.of(context).colorScheme.tertiary,
                ],
                [
                  Theme.of(context).colorScheme.onTertiary,
                  Theme.of(context).colorScheme.tertiary,
                ],
              ],
              gradientBegin: Alignment.centerLeft,
              gradientEnd: Alignment.centerRight,
              durations: [9000, 11000, 12000, 10000],
              heightPercentages: [0.1, 0.2, 0.3, 0.4],
              //blur: const MaskFilter.blur(BlurStyle.solid, 500),
            ),
            size: const Size(double.infinity, double.infinity),
          ),
        ),
      ),
      BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),

          // Lines up in column
          child: Container(
              alignment: Alignment.center,
              child: const Column(mainAxisAlignment: MainAxisAlignment.start))),
      Column(children: [
        Row(children: [
          Container(
            padding: const EdgeInsets.fromLTRB(29, 30, 0, 0),
            width: 147,
            height: 73,
            alignment: Alignment.topLeft,
            child: Image.network('https://i.ibb.co/dMPYLQ2/dark-evimero.png'),
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
        const Padding(
          padding: EdgeInsets.fromLTRB(41, 0, 40, 5),
          child: Row(
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
          ),
        ),
        const Divider(
          color: Colors.white,
          height: 20,
          indent: 48,
          endIndent: 45,
          thickness: 1,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(22, 0, 20, 0),
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
            rowHeight: 45,
            headerVisible: false,
            availableGestures: AvailableGestures.all,
            selectedDayPredicate: (day) => isSameDay(day, today),
            focusedDay: today,
            firstDay: DateTime.utc(2023, 7, 1),
            lastDay: DateTime.utc(2023, 10, 2),
            onDaySelected: _onDaySelected,
          ),
        )
      ]),
      Expanded(
        child: NotificationListener<ScrollNotification>(
          onNotification: (notification) {
            setState(() {
              isScrolledToTop = notification.metrics.atEdge &&
                  notification.metrics.pixels == 0;
            });
            return true;
          },
          child: DraggableScrollableSheet(
              initialChildSize: 0.48,
              minChildSize: 0.48,
              maxChildSize: 0.87,
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return CustomScrollView(controller: scrollController, slivers: [
                  SliverAppBar(
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(35))),
                    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                    shadowColor: Colors.transparent,
                    toolbarHeight: 100,
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Text(
                                'Title 1',
                                style: TextStyle(color: Colors.white, fontSize: 15),
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Text(
                                'Title 2',
                                style: TextStyle(color: Colors.white, fontSize: 15),
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Text(
                                'Title 2',
                                style: TextStyle(color: Colors.white, fontSize: 15),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 60,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text('Upcoming', style: TextStyle(color: Theme.of(context).colorScheme.primary),),
                          ),
                        ),
                      ],
                    ),
                    forceElevated: isScrolledToTop,
                    elevation: isScrolledToTop ? 4.0 : 0.0,
                    floating: true,
                    pinned: true,
                  ),
                  SliverToBoxAdapter(
                      child: Stack(children: [
                    Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Theme.of(context).scaffoldBackgroundColor,
        const Color.fromARGB(255, 22, 74, 133),
      ],
                            ),),
                        child: ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 25,
                            itemBuilder: (BuildContext context, int index) {
                              return ListTile(
                                  title: Text('Hi $index',
                                      style: const TextStyle(
                                        color: Colors
                                            .white, // Customize the text color
                                      )));
                            })),
                  ]))
                ]);
              }),
        ),
      )
    ]);
  }
}
