import 'package:flutter/material.dart';

class CustomElevatedButton extends StatefulWidget {
  final ButtonStyle customButtonStyle;
  final String buttonText;
  /*Instead of defining onPressed variable as Function,
  Dart requires its type as VoidCallback since ElevatedButton's
  onPressed argument's type cannot be different than 'void'.
  So, Dart did not allow us to define the type as 'Function' since it can be return something*/
  final VoidCallback onPressed;

  /*Default constructor which requires a text for button
  and an onPressed function as arguments to build the ElevatedButton widget.
  But style is optional*/
  const CustomElevatedButton(
    this.customButtonStyle,
    {super.key, required this.onPressed, required this.buttonText,}
  );

  /*Custom constructor with given default style
  and button text so only onPressed function is required*/
  CustomElevatedButton.defaultStyle({super.key, required this.onPressed}):
      customButtonStyle = ElevatedButton.styleFrom(
        textStyle: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w500,
        ),
        backgroundColor: const Color.fromRGBO(227, 231, 19, 1.0),
        fixedSize: const Size(250,50),
      ),
      buttonText = 'Roll';

  @override
  State<CustomElevatedButton> createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  @override
  Widget build(BuildContext context) {
    /*We are building our custom Elevated Button
    widget with given function and configuration parameters.*/
    return ElevatedButton(
      style: widget.customButtonStyle,
      onPressed: widget.onPressed,
      child: Text(widget.buttonText, style: const TextStyle(color: Colors.black))
    );
  }
}
