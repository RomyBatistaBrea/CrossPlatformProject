import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  
  final Function()? onTap;

  const CustomButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        constraints: const BoxConstraints(maxWidth: 200), // Set the maximum width
        width: currentWidth * .6,
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 125),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(135, 210, 193, 1),
          borderRadius: BorderRadius.circular(50.0),
          ),
          child: const Center(
            child: Text(
              'Sign In',
              style: TextStyle(
                color:Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16),
              ),
          )
      ),
    );
  }
}