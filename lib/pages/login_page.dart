import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:login_page/components/button.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class LoginPage extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const LoginPage({Key? key});

  //Sign User In Method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;

    //Entire Screen
    return Scaffold(
      resizeToAvoidBottomInset:
          false, // Add this line to prevent screen resizing

      body: Stack(
        children: [
          Positioned.fill(
              child: WaveWidget(
                  config: CustomConfig(
                      gradients: [
                        [Colors.blue, Colors.purpleAccent],
                        [
                          const Color.fromARGB(255, 224, 165, 235),
                          const Color.fromARGB(255, 126, 28, 60)
                        ],
                        [
                          const Color.fromARGB(255, 74, 133, 163),
                          Colors.deepPurple
                        ],
                      ],
                      gradientBegin: Alignment.centerLeft,
                      gradientEnd: Alignment.centerRight,
                      durations: [5000, 6000, 7000],
                      heightPercentages: [0.20, 0.30, 0.50],
                      blur: const MaskFilter.blur(BlurStyle.solid, 500)),
                  size: const Size(double.infinity, double.infinity))),

          // Places a blur over the background^
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 18, sigmaY: 18),

            // Centers

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
                      child:
                          Image.network('https://i.ibb.co/7RjG8BR/dark-e.png')),
                  //child: Image.asset('assets/images/dark_e.png')),
                  // Space between things
                  const SizedBox(height: 40),

                  const Text(
                    'Welcome',
                    style: TextStyle(
                      // Shadows behind Welcome Text
                      shadows: [
                        Shadow(
                          blurRadius: 6.0, // shadow blur
                          color: Color.fromARGB(83, 48, 48, 48), // shadow color
                          offset:
                              Offset(0.4, 5), // how much shadow will be shown
                        ),
                      ],
                      fontFamily: "Inter",
                      letterSpacing: 5,
                      color: Colors.white,
                      fontSize: 27,
                    ),
                  ),

                  const Spacer(), // Expands to fill the remaining space between the Welcome widget and the sign in widget
                  Align(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 70.0),
                      child: CustomButton(
                        onTap: signUserIn,
                      ),
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
