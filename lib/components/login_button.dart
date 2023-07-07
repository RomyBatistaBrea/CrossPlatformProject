import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 130, // <-- Button width
      height: 50, // <-- Button height
      child: ElevatedButton(
        onPressed: () {
          //executes when the button is pressed
          print('Button Pressed');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromRGBO(135, 210, 193, 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        child: Text(
          'Login',
          style: TextStyle(
            fontFamily: 'inter',
            fontSize: 19,
            letterSpacing: 1,
            color: Theme.of(context)
                .colorScheme
                .primary, // change text color inside Login button,
          ),
        ),
      ),
    );
  }
}
