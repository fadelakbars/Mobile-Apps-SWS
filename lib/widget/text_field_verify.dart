import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFieldVerify extends StatefulWidget {
  final TextInputType keyboardType;
  final bool obscureText;

  const CustomTextFieldVerify({
    super.key,
    this.keyboardType = TextInputType.number,
    this.obscureText = false,
  });

  @override
  State<CustomTextFieldVerify> createState() => _CustomTextFieldStateVerify();
}

class _CustomTextFieldStateVerify extends State<CustomTextFieldVerify> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      child: Stack(
        children: <Widget>[
          Positioned(
            // top: 21,
            left: 0,
            right: 0,
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color.fromRGBO(245, 244, 244, 1),
                border: Border.all(
                  color: const Color.fromRGBO(0, 0, 0, 1),
                  width: 1,
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
              child: TextField(
                keyboardType: widget.keyboardType,
                obscureText: widget.obscureText,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.singleLineFormatter,
                ],
                decoration: const InputDecoration(
                  border: InputBorder.none,
                ),
                style: const TextStyle(
                  color: Color.fromRGBO(30, 30, 30, 1),
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  // height: 1.5,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
