import 'package:flutter/material.dart';
import 'package:mobile_apps_sws/screens/login.dart';
import 'package:mobile_apps_sws/screens/lupa_pass.dart';
import 'package:mobile_apps_sws/screens/regist.dart';
<<<<<<< HEAD
import 'package:mobile_apps_sws/screens/reset_pass.dart';
import 'package:mobile_apps_sws/screens/verify.dart';
import 'package:mobile_apps_sws/widget/text_field.dart';
=======
import 'routes.dart';
>>>>>>> d3eab4bcd128944cc9e0c3a609dad042a0577f0e

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mobile Apps SWS',
<<<<<<< HEAD
      home: VerifyEmail(),
=======
      home: Login(),
      routes: routes,
>>>>>>> d3eab4bcd128944cc9e0c3a609dad042a0577f0e
    );
  }
}
