import 'package:app_pagos/models/credit_card.dart';
import 'package:app_pagos/widget/total_pay_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';


class CardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final card = TarjetaCredito(
      cardNumberHidden: '5555',
      cardNumber: '5555555555554444',
      brand: 'mastercard',
      cvv: '213',
      expiracyDate: '01/25',
      cardHolderName: 'Melissa Flores'
    );

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.add))
        ],
        centerTitle: true,
        backgroundColor: const Color(0xff284879),
        title: const Text('pagos'),
      ),
      body: Stack(
        children: [
          
          Container(),
          Hero(
            tag: card.cardNumber,
            child: CreditCardWidget(
                    cardHolderName: card.cardHolderName, 
                    cardNumber: card.cardNumberHidden, 
                    cvvCode: card.cvv, 
                    expiryDate: card.expiracyDate, 
                    onCreditCardWidgetChange: (CreditCardBrand ) {  }, 
                    showBackView: false,),
          ),
          Positioned(
            bottom: 0,
            child: TotalPayButton())
        ],
      )
   );
  }
}