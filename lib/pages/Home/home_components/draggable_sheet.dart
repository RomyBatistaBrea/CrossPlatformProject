import 'package:evimero/theme/constants/font_color.dart';
import 'package:flutter/material.dart';
import 'package:evimero/pages/Home/home_components/user_data_model_components.data/event_types.dart';

class DraggableSheet extends StatefulWidget {
  const DraggableSheet({super.key});

  @override
  State<DraggableSheet> createState() => _DraggableSheetState();
}

class _DraggableSheetState extends State<DraggableSheet> {
  /*
  - Romy Batista July 10, 2023

  This is the Draggable Scrollable Sheet that holds all the upcoming events for the student's day.

  Simply a layer that presents the hours available, classes left, and Hours of study,
  Along with all the matching images for the event type, name of event, and time of the event (Hour:Minutes)
  in a list view builder.

  This sheet is built based of 47% of the screen height to aim to give enough room
  for the calendar to be built and be completely visible.
  */

  bool isScrolledToTop = false;

  @override
  Widget build(BuildContext context) {
    double dragSheetHeight = (MediaQuery.of(context).size.height * 0.34) /
        MediaQuery.of(context).size.height;
    return DraggableScrollableSheet(
        initialChildSize: dragSheetHeight,
        minChildSize: dragSheetHeight,
        maxChildSize: dragSheetHeight,
        builder: (BuildContext context, ScrollController scrollController) {
          return CustomScrollView(controller: scrollController, slivers: [
            SliverToBoxAdapter(
              child: Container(
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(38, 255, 255, 255)),
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 25,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                            title: Padding(
                          padding: const EdgeInsets.only(left: 13.0),
                          child: Event(
                              eventType: 'df',
                              event: 'Math Class',
                              dateTime: DateTime.now()),
                        ));
                      })),
            )
          ]);
        });
  }
}
