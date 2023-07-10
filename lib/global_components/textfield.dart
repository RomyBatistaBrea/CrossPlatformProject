import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final controller; //Reads what the user types inside the textfield
  //final String hintText; //Tells the user what is expected inside the textfield
  final bool obscureText; //Turns the text inputted, to dots
  final Widget? prefixIcon; //Optional prefix icon inside the textfield
  final String? labelText;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.obscureText,
    this.prefixIcon,
    this.labelText,
  });

  @override
  // ignore: library_private_types_in_public_api
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late FocusNode _focusNode;
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() {
        _isFocused = _focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;

    return Container(
      constraints: const BoxConstraints(maxWidth: 400), // Set the maximum width
      width: currentWidth * .8,
      child: Focus(
        focusNode: _focusNode,
        child: TextField(
          controller: widget.controller, //Gets value string from constructor
          obscureText: widget.obscureText, //Gets boolean value from constructor
          style: const TextStyle(color: Colors.white),

          //Decorates the TextField
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              //When not focused, this is the border style
              borderSide:
                  const BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
              borderRadius: BorderRadius.circular(50.0),
            ),

            focusedBorder: OutlineInputBorder(
              //When focused, this is the border style
              borderSide:
                  const BorderSide(color: Color.fromARGB(255, 114, 219, 226)),
              borderRadius: BorderRadius.circular(50.0),
            ),

            //Padding around the sides of the textField
            contentPadding: const EdgeInsets.fromLTRB(12.0, 29.0, 12.0, 12.0),

            //Sets the color that we want to fill
            fillColor: _isFocused
                ? const Color.fromARGB(50, 170, 170, 170)
                : const Color.fromARGB(0, 255, 255, 255),

            filled: true, //The textField will be colored in if True
            labelText:
                widget.labelText, //Gets its property value from the constructor
            labelStyle: //Changes the color of the labelText when focused and not focused
                _isFocused
                    ? const TextStyle(color: Colors.white, fontSize: 15)
                    : const TextStyle(color: Colors.white, fontSize: 17),

            prefixIcon: widget.prefixIcon,
            prefixIconColor: _isFocused
                ? const Color.fromARGB(255, 114, 219, 226)
                : Colors.white, //Gets the Icon value from the constructor

            //const SizedBox(height: 300),

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

            /*final usernameController = TextEditingController();
              final passwordController = TextEditingController();
              final accessCodeController = TextEditingController();*/
          ),
        ),
      ),
    );
  }
}
