import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  final String TextButton;
  final Color backgroundColor;
  final VoidCallback onPressed;
  final String? iconLeft;
  final Color foregroundColor;
  final double height;

  const Custombutton(
      {super.key,
      required this.TextButton,
      required this.backgroundColor,
      required this.onPressed,
      required this.iconLeft,
      required this.foregroundColor,
      this.height = 26});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: iconLeft != null
          ? Image.asset(
              iconLeft!,
              height: height,
              fit: BoxFit.cover,
            )
          : const SizedBox.shrink(),
      label: Text(TextButton),
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        side: BorderSide(color: Colors.black),
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        minimumSize: Size(double.infinity, 50),
      ),
    );
  }
}
