import 'package:flutter/material.dart';
import 'package:mobile_apps_sws/screens/login.dart';
import 'package:mobile_apps_sws/screens/lupa_pass.dart';
import 'package:mobile_apps_sws/screens/regist.dart';
import 'package:mobile_apps_sws/screens/reset_pass.dart';
import 'package:mobile_apps_sws/screens/verify.dart';
import 'package:mobile_apps_sws/widget/text_field.dart';

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
      home: VerifyEmail(),
    );
  }
}
