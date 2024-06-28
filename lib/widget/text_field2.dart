import 'package:flutter/material.dart';

class TextField2 extends StatefulWidget {
  final String hintText;
  final String labelText;
  final TextInputType keyboardType;

  const TextField2({
    super.key,
    required this.hintText,
    required this.labelText,
    this.keyboardType = TextInputType.text,
  });

  @override
  State<TextField2> createState() => _TextField2State();
}

class _TextField2State extends State<TextField2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 140,
      height: 70,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 21,
            left: 0,
            right: 0,
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color.fromRGBO(245, 244, 244, 1),
                border: Border.all(
                  color: const Color.fromRGBO(0, 0, 0, 1),
                  width: 1,
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 0),
              child: TextField(
                keyboardType: widget.keyboardType,
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
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              // color: const Color.fromRGBO(245, 244, 244, 1),
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Text(
                widget.labelText,
                textAlign: TextAlign.left,
                style: const TextStyle(
                  color: Color.fromRGBO(30, 30, 30, 1),
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                ),
              ),
            ),
          ),
        ],
      ),
    );
    ;
  }
}
