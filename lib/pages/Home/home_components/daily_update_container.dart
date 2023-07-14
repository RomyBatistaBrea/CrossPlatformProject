import 'package:flutter/material.dart';
import '../../../theme/constants/font_color.dart';

class UpdateTab extends StatefulWidget {
  const UpdateTab({super.key});

  @override
  State<UpdateTab> createState() => _UpdateTabState();
}

class _UpdateTabState extends State<UpdateTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Color.fromARGB(38, 255, 255, 255),
          borderRadius: BorderRadius.vertical(top: Radius.circular(45))),
      child: Column(children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(35, 10, 0, 10),
              child: Text(
                '18 Hrs\nFree',
                textAlign: TextAlign.center,
                style: TextStyle(color: fontColor, fontSize: 15),
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.fromLTRB(35, 10, 35, 10),
              child: Text(
                '3\nClasses',
                textAlign: TextAlign.center,
                style: TextStyle(color: fontColor, fontSize: 15),
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 35, 10),
              child: Text(
                '4 Hrs\nStudy',
                textAlign: TextAlign.center,
                style: TextStyle(color: fontColor, fontSize: 15),
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
          height: 37.75,
          child: Padding(
            padding: const EdgeInsets.only(top: 3),
            child: Text(
              'Upcoming',
              style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
        ),
      ]),
    );
  }
}
