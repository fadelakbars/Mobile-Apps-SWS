import 'package:flutter/material.dart';
import 'package:mobile_apps_sws/widget/primary_button.dart';
import 'package:mobile_apps_sws/widget/text_field.dart';

class ResetPassword extends StatelessWidget {
  static String routeName = "/reset_pass";
  ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child : Padding (padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
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
              "Your new password must be different from the previous password",
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
            const CustomTextField(hintText: '************', labelText: 'New Password'),
            const SizedBox(height: 10),
            const CustomTextField(hintText: '************', labelText: 'Confirm Password'),
            const SizedBox(height: 20),
            CustomButton(text: 'Reset', onPressed: (){})
          ],
        ),
        ),
      ),
    );
  }
}