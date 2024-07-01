import 'package:flutter/material.dart';
import 'package:mobile_apps_sws/screens/verify.dart';
import 'package:mobile_apps_sws/widget/primary_button.dart';
import 'package:mobile_apps_sws/widget/text_field.dart';

class LupaPassword extends StatelessWidget {
  static String routeName = "/lupa_password";

  LupaPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Forgot Password",
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
                "Enter the email address associated with this account",
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
              CustomTextField(hintText: 'Contact@gmail.com', labelText: 'Email Address'),
              const SizedBox(height: 15),
              CustomButton(
                text: 'Submit',
                onPressed: () => Navigator.pushNamed(
                  context,
                  VerifyEmail.routeName,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
