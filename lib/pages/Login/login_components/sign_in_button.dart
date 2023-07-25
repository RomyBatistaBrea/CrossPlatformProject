
import 'package:evimero/main_nav_bar_page.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    /*
  - Romy Batista July 10, 2023

  This is a custom button widget that displays a "Secure Login" text inside an elevated button.
  The button has a fixed width of 190 and a height of 57.

  When the button is pressed, it executes the provided onPressed callback,
  which in this case prints 'Button Pressed' to the console.

  The button's background color is based on the 'surface' color from the current theme,
  and it has a rounded rectangular shape with a border radius of 15.

  The text inside the button is styled with a custom font family 'inter',
  font size of 17, letter spacing of 1, and the text color is taken from the primary color
  of the current theme.
  */
  
    return SizedBox(
      width: 190, // <-- Button width
      height: 57, // <-- Button height
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const MainNavPage()));
          //executes when the button is pressed
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
            fontFamily: 'Inter',
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
