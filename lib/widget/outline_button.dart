import 'package:flutter/material.dart';

class CustomOutlineButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color borderColor;
  final TextStyle textStyle;
  final double width;
  final double height;
  final double borderWidth;

  const CustomOutlineButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.borderColor = const Color.fromARGB(255, 212, 33, 243),
    this.textStyle = const TextStyle(color: Colors.black),
    this.width = 100,
    this.height = 20,
    this.borderWidth = 2.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8), // Sudut sedikit rounded
          ),
          side: BorderSide(color: borderColor, width: borderWidth),
          fixedSize: Size(width, height),
          padding: EdgeInsets.symmetric(vertical: 0),
        ),
        child: Text(
          text,
          style: textStyle,
        ),
      ),
    );
  }
}
