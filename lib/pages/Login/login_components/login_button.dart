import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 190, // <-- Button width
      height: 57, // <-- Button height
      child: ElevatedButton(
        onPressed: () {
          //executes when the button is pressed
          print('Button Pressed');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.surface,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Text(
          'Secure Login',
          style: TextStyle(
            fontFamily: 'inter',
            fontSize: 17,
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
