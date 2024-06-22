import 'package:flutter/material.dart';
import 'package:mobile_apps_sws/screens/splash_screen.dart';

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
      home: SplashScreen(),
    );
  }
}
