import 'package:app_pagos/screens/home_page.dart';
import 'package:app_pagos/screens/pay_complete_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'stripeApp',
      routes: {'home': (_) => const HomePage(), 'pay': (_) => const PayCompletePage()},
      initialRoute: 'home',
      theme: ThemeData.light().copyWith(
          primaryColor: const Color(0xff284879),
          scaffoldBackgroundColor: const Color(0xff21232A)),
    );
  }
}
