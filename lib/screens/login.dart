import 'package:flutter/material.dart';
import 'package:mobile_apps_sws/widget/outline_button.dart';
import 'package:mobile_apps_sws/widget/primary_button.dart';
import 'package:mobile_apps_sws/widget/text_field.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: 190,
              height: 190,
            ),
            // const SizedBox(height: 10),
            // const Text(
            //   'Smart Water System',
            //   style: TextStyle(
            //     fontSize: 25,
            //     fontWeight: FontWeight.bold,
            //     color: Colors.black,
            //   ),
            // ),
            const SizedBox(height: 70),
            const CustomTextField(
              hintText: 'Masukkan Email/Username',
              labelText: 'Email/Username',
              keyboardType: TextInputType.text,
            ),
            const CustomTextField(
              hintText: 'Masukkan Password',
              labelText: 'Password',
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
            ),
            const SizedBox(height: 20),
            CustomButton(
              text: 'Login',
              onPressed: () {},
              color: Color.fromRGBO(190, 10, 178, 1),
              textStyle: const TextStyle(color: Colors.white, fontSize: 14),
            ),
            const SizedBox(height: 5),
            CustomOutlineButton(
              text: 'Daftar',
              onPressed: () {},
              borderColor: Color.fromRGBO(190, 10, 178, 1),
              textStyle: const TextStyle(
                  color: Color.fromRGBO(190, 10, 178, 1), fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
