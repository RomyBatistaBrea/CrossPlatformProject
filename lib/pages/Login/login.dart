import 'dart:ui';
import 'package:evimero/pages/Login/login_components/dialog_box_question_mark.dart';
import 'package:flutter/material.dart';
import 'package:evimero/pages/Login/login_components/sign_in_button.dart';
import 'package:evimero/pages/Login/login_components/single_wave_background.dart';

class Login extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const Login({Key? key});

  //Sign User In Method
  void _signUserIn() {}

  @override
  Widget build(BuildContext context) {
    /*
  - Romy Batista July 12, 2023

  This is the Login screen widget, which displays a login interface.

  It consists of a background with a single wave animation and a blurred overlay.

  The login screen includes a row with a logo and a question mark icon, followed by a welcome message.

  The logo is displayed using an Image.asset widget, which loads the image based on the 'imageSite' value.

  The 'Welcome' text is styled with a custom font family, letter spacing, white color, and font size of 32.

  The login screen ends with a CustomButton widget, which represents the secure login button.
  */

    final currentWidth = MediaQuery.of(context).size.width;
    final String imageSite =
        MediaQuery.of(context).platformBrightness == Brightness.light
            ? 'assets/images/dark_e.png'
            : 'assets/images/light_e.png';

    //Entire Screen
    return Scaffold(
      resizeToAvoidBottomInset:
          false, // Add this line to prevent screen resizing

      body: Stack(
        children: [
          const Positioned.fill(child: SingleWave()),

          // Places a blur over the background^
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 60, sigmaY: 90),

            // Lines up in column
            child: Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                // Everything inside the column
                children: [
                  const SizedBox(height: 25),

                  SizedBox(
                      child: Padding(
                          padding: const EdgeInsets.all(35),
                          child: Row(children: [
                            Container(
                              width: 33,
                              height: 33,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Theme.of(context).colorScheme.outline,
                                    Theme.of(context).colorScheme.onSecondary
                                  ],
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),
                            // Drawing
                            const Spacer(),
                            const SizedBox(
                                width: 22,
                                height: 22,
                                child:
                                    QuestionCircle()) // Adjust the color as needed
                          ]))),

                  const SizedBox(height: 1),
                  // logo
                  Container(
                      constraints: const BoxConstraints(maxWidth: 300),
                      // Set the maximum width
                      width: currentWidth * .55,
                      child: Image.asset(imageSite)),
                  // Space between things
                  const SizedBox(height: 20),

                  const Text(
                    'Welcome',
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w100,
                      letterSpacing: 5,
                      color: Colors.white,
                      fontSize: 33,
                    ),
                  ),

                  const Spacer(), // Expands to fill the remaining space between the Welcome widget and the sign in widget
                  const Align(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 70.0),
                      child: CustomButton(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ], // End of the stack's internal components
      ),
    );
  }
}
