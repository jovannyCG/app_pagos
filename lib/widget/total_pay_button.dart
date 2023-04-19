import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TotalPayButton extends StatelessWidget {
  const TotalPayButton({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
        width: width,
        height: 100,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'total',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  '269',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            _BtnPay()
          ],
        ));
  }
}

class _BtnPay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return true ? buildAButtonCard(context) : buildAppleAndGooglePay(context);
  }

  Widget buildAButtonCard(BuildContext context) {
    return MaterialButton(
        height: 45,
        minWidth: 150,
        shape: const StadiumBorder(),
        elevation: 0,
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              FontAwesomeIcons.solidCreditCard,
              color: Colors.white,
            ),
            Text(
              '  pagar',
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
          ],
        ),
        onPressed: () {});
  }

  Widget buildAppleAndGooglePay(BuildContext context) {
    return MaterialButton(
        height: 45,
        minWidth: 170,
        shape: const StadiumBorder(),
        elevation: 0,
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Platform.isAndroid
                  ? FontAwesomeIcons.google
                  : FontAwesomeIcons.apple,
              color: Colors.white,
            ),
            Text(
              'pagar',
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
          ],
        ),
        onPressed: () {});
  }
}
