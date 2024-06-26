// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:mobile_apps_sws/screens/login.dart';
import 'package:mobile_apps_sws/screens/regist.dart';

final Map<String, WidgetBuilder> routes = {
  Login.routeName: (context) => const Login(),
  Regist.routeName: (context) => const Regist(),
  // Login.routeName: (context) => const Login(),
  // Login.routeName: (context) => const Login(),
};
