import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:login_page/pages/Login/login_components/login_button.dart';
import 'package:login_page/global_components/waves.dart';

class Login extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const Login({Key? key});

  //Sign User In Method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
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
          const Positioned.fill(child: WavesBackground()),

          // Places a blur over the background^
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 8),

            // Lines up in column
            child: Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                // Everything inside the column
                children: [
                  const SizedBox(height: 75),
                  // logo
                  Container(
                      constraints: const BoxConstraints(
                          maxWidth: 150), // Set the maximum width
                      width: currentWidth * .8,
                      child: Image.asset(imageSite)),
                  // Space between things
                  const SizedBox(height: 40),

                  const Text(
                    'Welcome',
                    style: TextStyle(
                      fontFamily: "Inter",
                      letterSpacing: 3,
                      color: Colors.white,
                      fontSize: 27,
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
