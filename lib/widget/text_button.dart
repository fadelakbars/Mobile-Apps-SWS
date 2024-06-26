import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final TextStyle textStyle;

  const CustomTextButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.textStyle = const TextStyle(
      color: Colors.blue,
      fontSize: 14,
    ),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Text(
        text,
        style: textStyle,
      ),
    );
  }
}
