import 'package:flutter/material.dart';

class Custumtextfield extends StatelessWidget {
  final String labelText;
  final bool obscureText;
  final bool hasSuffixIcon;
  final IconData? suffixIconData;
  final VoidCallback? onSuffixIconPressed;

  const Custumtextfield(
      {super.key,
      required this.labelText,
      required this.obscureText,
      required this.hasSuffixIcon,
      required this.suffixIconData,
      this.onSuffixIconPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 0, 10, 0), //buat jadi final
      child: TextField(
        decoration: InputDecoration(
          labelText: labelText,
          suffixIcon: hasSuffixIcon
              ? IconButton(
                  icon: Icon(suffixIconData),
                  onPressed: onSuffixIconPressed,
                )
              : null,
        ),
        obscureText: obscureText,
      ),
    );
  }
}
