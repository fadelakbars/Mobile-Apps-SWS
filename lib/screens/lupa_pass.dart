import 'package:flutter/material.dart';
import 'package:mobile_apps_sws/widget/primary_button.dart';
import 'package:mobile_apps_sws/widget/text_field.dart';

class LupaPassword extends StatelessWidget {
  LupaPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Lupa Password",
              style: TextStyle(
                color: Color.fromRGBO(30, 30, 30, 1),
                fontFamily: 'Poppins',
                fontSize: 30,
                fontWeight: FontWeight.bold,
                // height: 1.5,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              "Masukkan alamat email yang terkait \ndengan akun ini",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(30, 30, 30, 1),
                fontFamily: 'Poppins',
                fontSize: 15,
                fontWeight: FontWeight.normal,
                // height: 1.5,
              ),
            ),
            const SizedBox(height: 45),
            CustomTextField(hintText: 'Contact@gmail.com', labelText: 'Email'),
            const SizedBox(height: 10),
            CustomButton(text: 'Regist', onPressed: (){})
          ],
        ),
      ),
    );
  }
}
