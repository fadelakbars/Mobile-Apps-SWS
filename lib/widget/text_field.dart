import 'package:flutter/material.dart';

class TextField extends StatefulWidget {
  const TextField({super.key});

  @override
  State<TextField> createState() => _TextFieldState();
}

class _TextFieldState extends State<TextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // width:,
      decoration: BoxDecoration(),
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            'Password',
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Color.fromRGBO(30, 30, 30, 1),
                fontFamily: 'Poppins',
                fontSize: 14,
                letterSpacing:
                    0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.normal,
                height: 1.5 /*PERCENT not supported*/
                ),
          ),
          SizedBox(height: 0),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5),
                topRight: Radius.circular(5),
                bottomLeft: Radius.circular(5),
                bottomRight: Radius.circular(5),
              ),
              color: Color.fromRGBO(245, 244, 244, 1),
              border: Border.all(
                color: Color.fromRGBO(0, 0, 0, 1),
                width: 1,
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: 14, vertical: 9),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  'Password',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(127, 125, 125, 1),
                      fontFamily: 'Urbanist',
                      fontSize: 12,
                      letterSpacing:
                          0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1.5 /*PERCENT not supported*/
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
