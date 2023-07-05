import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function()? onTap;

  const CustomButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        //constraints: const BoxConstraints(maxWidth: 185, minWidth: 185),
        width: 200,
        padding: const EdgeInsets.all(23),
        margin: const EdgeInsets.symmetric(horizontal: 115),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(135, 210, 193, 1),
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: const Center(
          child: Text(
            'Log In',
            style: TextStyle(
                fontFamily: 'inter',
                color: Colors.white, 
                 fontSize: 20),
          ),
        ),
      ),
    );
  }
}
