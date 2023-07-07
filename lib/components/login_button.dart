import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
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
          color: Theme.of(context)
              .colorScheme
              .primary, //change text color inside Login button,
        ),
      ),
    );
  }
}
