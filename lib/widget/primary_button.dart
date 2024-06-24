import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final TextStyle textStyle;

  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.color = const Color.fromARGB(255, 212, 33, 243),
    this.textStyle = const TextStyle(color: Colors.white),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        fixedSize: Size(100, 20),
        padding: EdgeInsets.symmetric(vertical: 0)
      ),
      child: Text(
        text,
        style: textStyle,
      ),
    );
  }
}
