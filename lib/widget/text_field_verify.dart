import 'package:flutter/material.dart';

class CustomTextFieldVerify extends StatefulWidget {
  final String hintText;
  final TextInputType keyboardType;
  final bool obscureText;
  
  const CustomTextFieldVerify({
    super.key,
    required this.hintText,
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
      width: 35,
      height: 60,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 21,
            left: 0,
            right: 0,
            child: Container(
              height: 33,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color.fromRGBO(245, 244, 244, 1),
                border: Border.all(
                  color: const Color.fromRGBO(0, 0, 0, 1),
                  width: 1,
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
            
              child: TextField(
                keyboardType: widget.keyboardType,
                obscureText: widget.obscureText,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: widget.hintText,
                  hintStyle: const TextStyle(
                    color: Color.fromRGBO(127, 125, 125, 1),
                    fontFamily: 'Urbanist',
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    height: 1.5,
                  ),
                ),
                style: const TextStyle(
                  color: Color.fromRGBO(30, 30, 30, 1),
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  height: 1.5,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
