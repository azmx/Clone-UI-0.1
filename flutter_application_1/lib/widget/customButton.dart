import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  final String TextButton;
  final Color backgroundColor;
  final VoidCallback onPressed;
  final String? iconLeft;
  final Color foregroundColor;
  final dynamic height;

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
      label: Text(this.TextButton),
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        side: BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        minimumSize: Size(double.infinity, 50),
      ),
    );
  }
}
