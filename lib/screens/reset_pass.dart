import 'package:flutter/material.dart';
import 'package:mobile_apps_sws/widget/primary_button.dart';
import 'package:mobile_apps_sws/widget/text_field.dart';

class ResetPassword extends StatelessWidget {
  ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Reset Password",
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
              "Password baru Anda harus berbeda \ndari password sebelumnya",
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
            const CustomTextField(hintText: '************', labelText: 'Password Baru'),
            const SizedBox(height: 20),
            const CustomTextField(hintText: '************', labelText: 'Konfirmasi Password Baru'),
            const SizedBox(height: 10),
            CustomButton(text: 'Reset', onPressed: (){})
          ],
        ),
      ),
    );
  }
}