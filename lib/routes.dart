// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:mobile_apps_sws/screens/login.dart';
import 'package:mobile_apps_sws/screens/lupa_pass.dart';
import 'package:mobile_apps_sws/screens/regist.dart';
import 'package:mobile_apps_sws/screens/verify.dart';

final Map<String, WidgetBuilder> routes = {
  Login.routeName: (context) => const Login(),
  Regist.routeName: (context) => const Regist(),
  LupaPassword.routeName:(context) => LupaPassword(),
  VerifyEmail.routeName :(context) => const VerifyEmail(),
  // Login.routeName: (context) => const Login(),
  // Login.routeName: (context) => const Login(),
};
