import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:login_page/pages/Login/login_components/login_button.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class Login extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const Login({Key? key});

  //Sign User In Method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final String logoUrl =
        MediaQuery.of(context).platformBrightness == Brightness.light
            ? 'https://i.ibb.co/7RjG8BR/dark-e.png'
            : 'https://i.ibb.co/k3Ndqpd/light-e.png';

    //Entire Screen
    return Scaffold(
      resizeToAvoidBottomInset:
          false, // Add this line to prevent screen resizing

      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor),
              child: WaveWidget(
                config: CustomConfig(
                  gradients: [
                    [
                      Theme.of(context).colorScheme.onPrimary,
                      Theme.of(context).colorScheme.onSecondary
                    ],
                    [
                      Theme.of(context).colorScheme.tertiary,
                      Theme.of(context).colorScheme.onTertiary,
                    ],
                    [
                      Theme.of(context).colorScheme.onPrimaryContainer,
                      Theme.of(context).colorScheme.primaryContainer,
                    ],
                    [
                      Theme.of(context).colorScheme.onTertiary,
                      Theme.of(context).colorScheme.tertiary,
                    ],
                  ],
                  gradientBegin: Alignment.centerLeft,
                  gradientEnd: Alignment.centerRight,
                  durations: [5000, 7000, 6000, 5000],
                  heightPercentages: [0.33, 0.33, 0.45, 0.6],
                  //blur: const MaskFilter.blur(BlurStyle.solid, 500),
                ),
                size: const Size(double.infinity, double.infinity),
              ),
            ),
          ),

          // Places a blur over the background^
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 25, sigmaY: 30),

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
                      child: Image.network(logoUrl)),
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
