import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:login_page/pages/Login/login_components/login_button.dart';
import 'package:login_page/pages/Login/login_components/single_wave.dart';
import 'package:url_launcher/url_launcher.dart';

class Login extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const Login({Key? key});

  //Sign User In Method
  void _signUserIn() {}

  @override
  Widget build(BuildContext context) {
    final Uri uri = Uri.parse('https:www.okta.com/products/authentication/');
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
                            SizedBox(
                              width: 22,
                              height: 22,
                              child: GestureDetector(
                                onTap: () {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Theme(
                                        data: Theme.of(context).copyWith(
                                            dialogBackgroundColor:
                                                Theme.of(context)
                                                    .scaffoldBackgroundColor),
                                        child: AlertDialog(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          title: Text(
                                            'Secure Login',
                                            style: TextStyle(
                                                fontSize: 25,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .primary),
                                          ),
                                          content: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text(
                                                'Your login credentials are securely managed.',
                                                style: TextStyle(
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .primary),
                                              ),
                                              const SizedBox(height: 30),
                                              RichText(
                                                text: TextSpan(
                                                  style: DefaultTextStyle.of(
                                                          context)
                                                      .style,
                                                  children: [
                                                    TextSpan(
                                                        text: 'Powered by ',
                                                        style: TextStyle(
                                                            fontSize: 14,
                                                            color: Theme.of(
                                                                    context)
                                                                .colorScheme
                                                                .primary,
                                                            fontFamily: 'inter',
                                                            decoration:
                                                                TextDecoration
                                                                    .underline,
                                                            decorationStyle:
                                                                TextDecorationStyle
                                                                    .solid,
                                                            decorationColor:
                                                                Colors.white)),
                                                    TextSpan(
                                                      text: 'Okta',
                                                      style: const TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.blue,
                                                        fontFamily: 'inter',
                                                        decoration:
                                                            TextDecoration
                                                                .underline,
                                                        decorationStyle:
                                                            TextDecorationStyle
                                                                .solid,
                                                        decorationColor:
                                                            Colors.white,
                                                        // Set single line style,
                                                      ),
                                                      recognizer:
                                                          TapGestureRecognizer()
                                                            ..onTap = (() {
                                                              launchUrl(uri);
                                                            }),
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          ' for secure authentication.',
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color:
                                                              Theme.of(context)
                                                                  .colorScheme
                                                                  .primary,
                                                          fontFamily: 'inter',
                                                          decoration:
                                                              TextDecoration
                                                                  .underline,
                                                          decorationStyle:
                                                              TextDecorationStyle
                                                                  .solid,
                                                          decorationColor:
                                                              Colors.white),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          actions: [
                                            ElevatedButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: const Text('Close'),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  );
                                },
                                child: const Icon(
                                  CupertinoIcons.question_circle,
                                  size: 22.0, // Adjust the size as needed
                                  color: Colors.white,
                                ),
                              ),
                            ) // Adjust the color as needed
                          ]))),

                  const SizedBox(height: 1),
                  // logo
                  Container(
                      constraints: const BoxConstraints(
                          maxWidth: 170), // Set the maximum width
                      width: currentWidth * .8,
                      child: Image.asset(imageSite)),
                  // Space between things
                  const SizedBox(height: 20),

                  const Text(
                    'Welcome',
                    style: TextStyle(
                      fontFamily: "Inter",
                      letterSpacing: 5,
                      color: Colors.white,
                      fontSize: 32,
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
