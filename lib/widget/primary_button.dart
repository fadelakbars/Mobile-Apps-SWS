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
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8), // Sudut sedikit rounded
          ),
          padding: EdgeInsets.symmetric(vertical: 13), // Padding vertikal
        ),
        child: Text(
          text,
          style: textStyle,
        ),
      ),
    );
  }
}
