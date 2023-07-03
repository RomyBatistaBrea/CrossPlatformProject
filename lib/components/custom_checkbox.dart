import 'package:flutter/material.dart';

class CustomCheckbox extends StatefulWidget {
  final bool isChecked;
  final ValueChanged<bool> onChanged;

  const CustomCheckbox({
    Key? key,
    required this.isChecked,
    required this.onChanged,
  }) : super(key: key);

  @override
  _CustomCheckboxState createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  late bool isChecked;

  @override
  void initState() {
    isChecked = widget.isChecked;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;

    return Container(
      constraints: const BoxConstraints(maxWidth: 400),
      width: currentWidth * .8,
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        // Set the border color here
        borderRadius:
            BorderRadius.circular(10.0), // Set the desired border radius here
      ),
      child: Row(
        children: [
          Checkbox(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
            checkColor: Colors.white,
            fillColor: MaterialStateProperty.all(Colors.blue),
            value: isChecked,
            onChanged: (value) {
              setState(
                () {
                  isChecked = value!;
                },
              );
              widget.onChanged(value!);
            },
          ),
          const Text(
            "Remember me",
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Inter',
            ),
          )
        ],
      ),
    );
  }
}
