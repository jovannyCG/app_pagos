import 'package:app_pagos/blocs/pay/pay_bloc.dart';
import 'package:app_pagos/screens/home_page.dart';
import 'package:app_pagos/screens/pay_complete_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => PayBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'stripeApp',
        routes: {
          'home': (_) => const HomePage(),
          'pay': (_) => const PayCompletePage()
        },
        initialRoute: 'home',
        theme: ThemeData.light().copyWith(
            primaryColor: const Color(0xff284879),
            scaffoldBackgroundColor: const Color(0xff21232A)),
      ),
    );
  }
}
