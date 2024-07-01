import 'package:flutter/material.dart';
import 'package:mobile_apps_sws/screens/login.dart';
import 'package:mobile_apps_sws/widget/primary_button.dart';
import 'package:mobile_apps_sws/widget/text_button.dart';
import 'package:mobile_apps_sws/widget/text_field.dart';
import 'package:mobile_apps_sws/widget/text_field2.dart';

class Regist extends StatelessWidget {
  static String routeName = "/regist";

  const Regist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(40, 60, 40, 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Bagian atas
              const Column(
                children: [
                  // const SizedBox(height: 40),
                  Text(
                    "Regist",
                    style: TextStyle(
                      color: Color.fromRGBO(30, 30, 30, 1),
                      fontFamily: 'Poppins',
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Masukkan informasi lengkap untuk \nmembuat akun anda",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromRGBO(30, 30, 30, 1),
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(height: 50),
                ],
              ),

              const Column(
                children: [
                  CustomTextField(
                    hintText: 'Nama',
                    labelText: 'Nama',
                  ),
                  SizedBox(height: 10),
                  CustomTextField(
                    hintText: '081234567',
                    labelText: 'No Whatsapp',
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(height: 10),
                  CustomTextField(
                    hintText: 'email@gmail.com',
                    labelText: 'Email',
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 10),
                  CustomTextField(
                    hintText: 'Masukkan Password',
                    labelText: 'Password',
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                  ),
                  SizedBox(height: 10),
                  CustomTextField(
                    hintText: 'Masukkan Ulang Password',
                    labelText: 'Konfirmasi Password',
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                  ),
                ],
              ),

              // Spacer(),
              const SizedBox(height: 20),

              Column(
                children: [
                  CustomButton(
                    text: 'Daftar',
                    onPressed: () {},
                    color: Color.fromRGBO(190, 10, 178, 1),
                    textStyle:
                        const TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Sudah punya akun?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromRGBO(30, 30, 30, 1),
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      const SizedBox(width: 3),
                      CustomTextButton(
                        text: 'Login',
                        onPressed: () => Navigator.pushNamed(
                          context,
                          Login.routeName,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
