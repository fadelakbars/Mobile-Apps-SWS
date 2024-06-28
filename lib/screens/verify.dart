import 'package:flutter/material.dart';
import 'package:mobile_apps_sws/widget/primary_button.dart';
import 'package:mobile_apps_sws/widget/text_field_verify.dart';

class VerifyEmail extends StatelessWidget {
  static String routeName = "/verifikasi_otp";

  const VerifyEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Verifikasi Email",
              style: TextStyle(
                color: Color.fromRGBO(30, 30, 30, 1),
                fontFamily: 'Poppins',
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              "Masukkan 4 Digit Kode yang telah \ndikirim ke email Anda",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(30, 30, 30, 1),
                fontFamily: 'Poppins',
                fontSize: 15,
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(height: 45),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextFieldVerify(),
                SizedBox(
                  width: 10,
                ),
                CustomTextFieldVerify(),
                SizedBox(
                  width: 10,
                ),
                CustomTextFieldVerify(),
                SizedBox(
                  width: 10,
                ),
                CustomTextFieldVerify(),
              ],
            ),
            const SizedBox(height: 15),
            const Text(
              "Kirim Ulang Kode",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(30, 30, 30, 1),
                fontFamily: 'Poppins',
                fontSize: 12,
                fontWeight: FontWeight.normal,
                // height: 1.5,
              ),
            ),
            CustomButton(text: 'Verifikasi', onPressed: () {})
          ],
        ),
      ),
    );
  }
}
