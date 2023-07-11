import 'package:flutter/material.dart';
import 'package:login_page/pages/Home/home_components/user_data_model_components.data/event_types.dart';

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
    double dragSheetHeight = (MediaQuery.of(context).size.height * 0.47) /
        MediaQuery.of(context).size.height;
    return DraggableScrollableSheet(
            initialChildSize: dragSheetHeight,
            minChildSize: dragSheetHeight,
            maxChildSize: dragSheetHeight,
            builder: (BuildContext context, ScrollController scrollController) {
              return CustomScrollView(controller: scrollController, slivers: [
                SliverAppBar(
                    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                    pinned: true,
                    floating: true,
                    forceElevated: true,
                    toolbarHeight: 130,
                    expandedHeight: 130,
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(35))),
                    title: Column(children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(35, 5, 0, 10),
                            child: Text(
                              '18 Hrs\nFree',
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.fromLTRB(35, 5, 35, 10),
                            child: Text(
                              '3\nClasses',
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 5, 35, 10),
                            child: Text(
                              '4 Hrs\nStudy',
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          )
                        ],
                      ),
                      const Divider(
                        color: Colors.white,
                        height: 20,
                        indent: 48,
                        endIndent: 45,
                        thickness: 0.1,
                      ),
                      SizedBox(
                        height: 60,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Text(
                            'Upcoming',
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                      ),
                    ])),
                SliverToBoxAdapter(
                  child: Container(
                      decoration: const BoxDecoration(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(45)),
                          color: Color.fromARGB(0, 0, 0, 0)),
                      child: ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 25,
                          itemBuilder: (BuildContext context, int index) {
                            return ListTile(
                                title: Padding(
                                  padding: const EdgeInsets.only(left: 13.0),
                                  child: Event(eventType:'df', event: 'Math Class', dateTime: DateTime.now()),
                                ));
                          })),
                )
              ]);
            });
  }
}
