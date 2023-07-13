import 'package:flutter/material.dart';
import 'package:evimero/constants/font_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';

class QuestionCircle extends StatelessWidget {
  const QuestionCircle({super.key});

  @override
  Widget build(BuildContext context) {
    final Uri uri = Uri.parse('https:www.okta.com/products/authentication/');

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return Theme(
                data: Theme.of(context).copyWith(
                    dialogBackgroundColor:
                        Theme.of(context).scaffoldBackgroundColor),
                child: AlertDialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  title: const Text(
                    'Secure Login',
                    style: TextStyle(fontSize: 25, color: fontColor),
                  ),
                  content: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Your login credentials are securely managed.',
                        style: TextStyle(color: fontColor),
                      ),
                      const SizedBox(height: 30),
                      RichText(
                        text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: [
                            const TextSpan(
                                text: 'Powered by ',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: fontColor,
                                    fontFamily: 'inter',
                                    decoration: TextDecoration.underline,
                                    decorationStyle: TextDecorationStyle.solid,
                                    decorationColor: Colors.white)),
                            TextSpan(
                              text: 'Okta',
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                                fontFamily: 'inter',
                                decoration: TextDecoration.underline,
                                decorationStyle: TextDecorationStyle.solid,
                                decorationColor: Colors.white,
                                // Set single line style,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = (() {
                                  launchUrl(uri);
                                }),
                            ),
                            const TextSpan(
                              text: ' for secure authentication.',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: fontColor,
                                  fontFamily: 'inter',
                                  decoration: TextDecoration.underline,
                                  decorationStyle: TextDecorationStyle.solid,
                                  decorationColor: Colors.white),
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
    );
  }
}
