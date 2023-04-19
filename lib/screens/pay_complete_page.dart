import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class PayCompletePage extends StatelessWidget {
  const PayCompletePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff284879),
        title: const Text('pago realizado'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(FontAwesomeIcons.star, color: Colors.white54, size: 100,),
            SizedBox(height: 20,),
            Text('El pago se realizó correctamente', style: TextStyle(color: Colors.white, fontSize: 22),)
          ],
        ),
     ),
   );
  }
}