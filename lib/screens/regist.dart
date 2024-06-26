import 'package:flutter/material.dart';
import 'package:mobile_apps_sws/widget/primary_button.dart';
import 'package:mobile_apps_sws/widget/text_button.dart';
import 'package:mobile_apps_sws/widget/text_field.dart';
import 'package:mobile_apps_sws/widget/text_field2.dart';

class Regist extends StatelessWidget {
  const Regist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Regist",
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
              "Masukkan informasi lengkap untuk \nmembuat akun anda",
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
            
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField2(hintText: 'Nama', labelText: 'Nama'),
                SizedBox(width: 10),
                TextField2(hintText: 'email@gmail.com', labelText: 'Email'),
              ],
            ),
            
            const SizedBox(height: 5),

            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField2(hintText: '081234567', labelText: 'No Whatsapp'),
                SizedBox(width: 10),
                TextField2(hintText: 'Jl. Manuruki Raya', labelText: 'Alamat'),
              ],
            ),

            const SizedBox(height: 5),

            const CustomTextField(
              hintText: 'Masukkan Password',
              labelText: 'Password',
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
            ),

            const SizedBox(height: 5),

            const CustomTextField(
              hintText: 'Masukkan Ulang Password',
              labelText: 'Konfirmasi Password',
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
            ),

            const SizedBox(height: 15),

            CustomButton(text: 'Daftar',
              onPressed: () {},
              color: Color.fromRGBO(190, 10, 178, 1),
              textStyle: const TextStyle(color: Colors.white, fontSize: 14),),

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
                // height: 1.5,
              ),
            ),
              CustomTextButton(text: 'Login', onPressed: () {}),
            ],
          ),

          ],
        ),
      ),
    );
  }
}
