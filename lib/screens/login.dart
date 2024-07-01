import 'package:flutter/material.dart';
import 'package:mobile_apps_sws/screens/home.dart';
import 'package:mobile_apps_sws/screens/lupa_pass.dart';
import 'package:mobile_apps_sws/screens/regist.dart';
import 'package:mobile_apps_sws/widget/outline_button.dart';
import 'package:mobile_apps_sws/widget/primary_button.dart';
import 'package:mobile_apps_sws/widget/text_button.dart';
import 'package:mobile_apps_sws/widget/text_field.dart';

class Login extends StatelessWidget {
  static String routeName = "/login";

  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              Image.asset(
                'assets/images/logo.png',
                width: 220,
                height: 220,
              ),
              //const SizedBox(height: 10),
              const Text(
              "Welcome Back",
              style: TextStyle(
                color: Color.fromRGBO(30, 30, 30, 1),
                fontFamily: 'Poppins',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              "Login to get access to your account",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(30, 30, 30, 1),
                fontFamily: 'Poppins',
                fontSize: 15,
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(height: 40),
              const CustomTextField(
                hintText: 'Enter Username/Email Address',
                labelText: 'Username/Email Address',
                keyboardType: TextInputType.text,
              ),
              const SizedBox(height: 10),
              const CustomTextField(
                hintText: 'Enter Password',
                labelText: 'Password',
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
              ),
              const SizedBox(height: 10),
              CustomTextButton(
                text: 'Forgot Password?',
                textStyle: const TextStyle(
                  color: Color.fromRGBO(30, 30, 30, 1),
                  fontFamily: 'Poppins',
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                ),
                onPressed: () => Navigator.pushNamed(
                  context,
                  LupaPassword.routeName,
                ),
              ),
              const SizedBox(height: 25),
              CustomButton(
                text: 'Login',
                onPressed: () => Navigator.pushNamed(
                  context,
                  Home.routeName,
                ),
                textStyle: const TextStyle(color: Colors.white, fontSize: 14),
              ),
              const SizedBox(height: 5),
              CustomOutlineButton(
                text: 'Sign Up',
                onPressed: () => Navigator.pushNamed(
                  context,
                  Regist.routeName,
                ),
                borderColor: Color(0xFFD421F3),
                textStyle: const TextStyle(
                    color: Color.fromARGB(255, 212, 33, 243), fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
