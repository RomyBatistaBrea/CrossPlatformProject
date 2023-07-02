import 'dart:ui';
import 'package:login_page/components/custom_checkbox.dart'; // Waiting on confirmation for third party login screen or we use custom ui*
import 'package:flutter/material.dart';
import 'package:login_page/components/button.dart';
import 'package:login_page/components/textfield.dart'; // Waiting on confirmation for third party login screen or we use custom ui*
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key});

  //Grabs the input from user in the text fields
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final accessCodeController = TextEditingController();

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

            child: Center(
              // Lines up in column
              child: SingleChildScrollView(
                child: Column(
                  // Everything inside the column
                  children: [
                    const SizedBox(height: 75),
                    // logo
                    Container(
                        constraints: const BoxConstraints(
                            maxWidth: 150), // Set the maximum width
                        width: currentWidth * .8,
                        child: Image.asset('assets/images/dark_e.png')),
                    // Space between things
                    const SizedBox(height: 40),

                    const Text(
                      'Welcome',
                      style: TextStyle(
                        // Shadows behind Welcome Text
                        shadows: [
                          Shadow(
                            blurRadius: 6.0, // shadow blur
                            color:
                                Color.fromARGB(83, 48, 48, 48), // shadow color
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

                    const SizedBox(height: 300),

                    /*CustomTextField(
                    controller: accessCodeController,
                    obscureText: false,
                    prefixIcon: const Icon(Icons.layers),
                    labelText: 'Access Code',
                    ),

                    const SizedBox(height: 21),
                    
                    CustomTextField(
                      controller: usernameController,
                      obscureText: false,
                      prefixIcon: const Icon(Icons.person),
                      labelText: 'Username',
                    ),

                    const SizedBox(height: 21),

                    CustomTextField(
                      controller: passwordController,
                      obscureText: true,
                      prefixIcon: const Icon(Icons.lock),
                      labelText: 'Password',
                    ),

                    const SizedBox(height: 20),

                    CustomCheckbox(
                      isChecked: false, // Provide the initial checked state
                      onChanged: (bool value) {
                        // Handle the onChanged event
                        // You can update the state or perform any necessary actions here
                      },
                    ),*/

                    CustomButton(
                      onTap: signUserIn,
                    ),

                    const SizedBox(height: 50)
                  ],
                ),
              ),
            ),
          ),
        ], // End of the stack's internal components
      ),
    );
  }
}
