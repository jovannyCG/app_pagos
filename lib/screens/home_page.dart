import 'package:app_pagos/screens/card_page.dart';
import 'package:app_pagos/widget/total_pay_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

import '../data/cards.dart';
import '../helpers/helpers.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () async {
                //  showLoading(context);
                //  await Future.delayed(const Duration(seconds: 1));
                 // Navigator.pop(context);
                  showAlert(context, 'hola', 'mundo');
                },
                icon: const Icon(Icons.add))
          ],
          centerTitle: true,
          backgroundColor: const Color(0xff284879),
          title: const Text('pagos'),
        ),
        body: Stack(
          children: [
            Positioned(
              width: size.width,
              height: size.height,
              top: 200,
              child: PageView.builder(
                  controller: PageController(viewportFraction: 0.9),
                  physics: const BouncingScrollPhysics(),
                  itemCount: tarjetas.length,
                  itemBuilder: (_, i) {
                    final card = tarjetas[i];

                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context, navegarMapaFadeIn(context, CardPage()));
                      },
                      child: Hero(
                        tag: card.cardNumber,
                        child: CreditCardWidget(
                          cardHolderName: card.cardHolderName,
                          cardNumber: card.cardNumberHidden,
                          cvvCode: card.cvv,
                          expiryDate: card.expiracyDate,
                          onCreditCardWidgetChange: (CreditCardBrand) {},
                          showBackView: false,
                        ),
                      ),
                    );
                  }),
            ),
            Positioned(bottom: 0, child: TotalPayButton())
          ],
        ));
  }
}
