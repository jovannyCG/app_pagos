import 'package:app_pagos/screens/home_page.dart';
import 'package:app_pagos/screens/pay_complete_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'stripeApp',
      routes: {
        'home': (_)=> HomePage(),
        'pay': (_)=>  PayCompletePage()
      },
      initialRoute: 'home',
      theme: ThemeData.light().copyWith(
        primaryColor: Color(0xff284879),
        scaffoldBackgroundColor: Color(0xff21232A)
      ),
    );
  }
}